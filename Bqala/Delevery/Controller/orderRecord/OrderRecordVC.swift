//
//  OrderRecordVC.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD


class OrderRecordVC: BaseController {
    
    var mainview : OrderRecordView!{
        return view as? OrderRecordView
    }
    
 var is_selected = 0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OrderRecordView()
        setTarget()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        mainview.mainTableView2.dataSource = self
        mainview.mainTableView2.delegate = self
        if is_selected == 0 {
            mainview.selectedView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            mainview.selectedView2.backgroundColor = .white
        }
        handelApi()
        handelApi2()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupSideMenu()
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
    }
    
    
    @objc func orderVC(){
        mainview.selectedView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        mainview.selectedView2.backgroundColor = .clear
        is_selected = 0
        mainview.mainTableView2.isHidden = true
        mainview.mainTableView.isHidden = false
        mainview.mainTableView.reloadData()
    }
    @objc func Cancel(){
     mainview.selectedView.backgroundColor = .clear
        mainview.selectedView2.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        is_selected = 1
        mainview.mainTableView2.isHidden = false
        mainview.mainTableView2.reloadData()
        mainview.mainTableView.isHidden = true
    }
//
    func setTarget(){
        
        mainview.cancelButton.addTarget(self, action: #selector(Cancel), for: .touchUpInside)
        mainview.pastButton.addTarget(self, action: #selector(orderVC), for: .touchUpInside)
        
    }

    var data: pastOrder? {
        didSet {
            mainview.mainTableView.reloadData()
        }
    }
    
    var data2: pastOrder? {
        didSet {
            mainview.mainTableView2.reloadData()
        }
    }
    var currentPage = 1
    var lastPage = 2
    var isLoading = true

    
    func handelApi(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/finished"
        callApi(pastOrder.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data = data
                self?.lastPage = data.data?.paginate.totalPages ?? 2
                self?.currentPage = 1
                self?.isLoading = false
                print(data)
                self?.mainview.mainTableView.reloadData()
            }
        }
    }
    func handelApi2(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/pending"
        callApi(pastOrder.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data2 = data
                self?.lastPage = data.data?.paginate.totalPages ?? 2
                self?.currentPage = 1
                self?.isLoading = false
                print(data)
                self?.mainview.mainTableView.reloadData()
            }
        }
    }


}

extension OrderRecordVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if is_selected == 0 {
             let count = data?.data?.carts.count ?? 0
            return count
        }else{
             let count2 = data2?.data?.carts.count ?? 0
            return count2
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if is_selected == 0 {
            
            let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "PastOrdercell") as? PastOrdercell
            if let Data = data?.data?.carts[indexPath.row]{
                 cell?.config(data: Data)
                cell?.pressAssistButton = {
                    let vc = RateVc()
                    vc.id = Data.cartID ?? 0
                   self.presentModelyVC(vc: vc)
                }
            }
            cell?.selectionStyle = .none
           
            return cell!
        }else{
            let cell = mainview.mainTableView2.dequeueReusableCell(withIdentifier: "CancelCell") as? CancelCell
            if let Data = data2?.data?.carts[indexPath.row]{
                cell?.config(data: Data)
            }
            cell?.selectionStyle = .none
            return cell!
        }
        
//        return ceil!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == mainview.mainTableView2{
            if let Data = data2?.data?.carts[indexPath.row]{
             let vc = OrderPenDetailVC()
                vc.id = Data.cartID ?? 0
                navigationController?.pushViewController(vc, animated: true)
            }
        }
        //        present(talabatyDetailsVC(), animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }
    
    
    
    
}




struct pastOrder : BaseCodable{
    var value: Bool?
    var msg: String?
    let data : Cancel?
}

struct Cancel: Codable {
    var carts: [Carts]
    let paginate: Paginate
}

struct Carts: Codable {
    let createdAt: String?
    let cartID: Int?
    let location: String?
    let ratesCount: Bool?
    
    enum CodingKeys: String, CodingKey {
        case createdAt = "created_at"
        case cartID = "cart_id"
        case location
        case ratesCount = "rates_count"
    }
}




