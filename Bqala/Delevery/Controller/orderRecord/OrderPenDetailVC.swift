//
//  OrderPenDetailVC.swift
//  Bqala
//
//  Created by Moe on 6/15/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class OrderPenDetailVC: BaseController {

    var mainview : OrederpendDetaiView!{
        return view as? OrederpendDetaiView
    }
    
    var id = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OrederpendDetaiView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getData()
        title = "pending order details"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SVProgressHUD.dismiss()
    }
    
    var data: CartDet? {
        didSet {
            mainview.mainTableView.reloadData()
        }
    }
    
    func getData(){
        SVProgressHUD.show()
        print("it's your fucken id \(id)")
        let url = "http://bqala.panorama-q.com/api/delivery/cart-details/\(id)"
        callApi(CartDet.self, url: url,method: .get, parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data = data
                self?.mainview.date.text = data.data?.createdAt
                self?.mainview.number.text = data.data?.userName
                self?.mainview.Location.text = data.data?.location
                if let number = data.data?.id{
                  self?.mainview.name.text = String(number)
                }
                    let url = URL(string: data.data?.userImage ?? "")
                    self?.mainview.Pagelimage.kf.setImage(with: url)
                
                
                
                print(data)
                self?.mainview.mainTableView.reloadData()
            }
        }
    }
    

    


}


extension OrderPenDetailVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = data?.data?.items?.count{
            return  count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "PendiingDetailCell") as? PendiingDetailCell
        cell?.selectionStyle = .none
        if let cellData = data?.data?.items?[indexPath.row] {
            cell?.config(data: cellData)
        }
        
        return cell!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //        present(talabatyDetailsVC(), animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100
    }
    
    
    
    
}
