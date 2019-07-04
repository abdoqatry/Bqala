//
//  DHomeVc.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD


class DHomeVc: BaseController {
    
    var mainview : DHomeView!{
        return view as? DHomeView
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DHomeView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        getData()
        title = "Home"
        setupSideMenu()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SVProgressHUD.dismiss()
    }
    var data: Home? {
        didSet {
            mainview.mainTableView.reloadData()
        }
    }
    var currentPage = 1
    var lastPage = 2
    var isLoading = true
    
    private func getData(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/available-carts"
        callApi(Home.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
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
    
    private func paginate() {
        
        guard !isLoading else { return }
        guard lastPage > currentPage else { return }
        isLoading = true
        let url = "http://bqala.panorama-q.com/api/delivery/available-carts?page=\(currentPage + 1)"
        callApi(Home.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            if let data = data{
                
//                self?.data = data
//                self?.data?.data?.orders.append(contentsOf: data.data?.orders)
                self?.currentPage = 1
                self?.isLoading = false
            }
        }
    }
    
  

    
    
    
    

 

}

extension DHomeVc : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count = data?.data?.carts.count ?? 0
        return count
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "DHomeCell") as? DHomeCell
        cell?.selectionStyle = .none
        if let cellData = data?.data?.carts[indexPath.row] {
            cell?.configer(data: cellData)
            cell?.pressAssistButton = {
                let vc = OrderDetailsVc()
                vc.id = cellData.cartID!
                self.navigationController?.pushViewController(vc, animated: true)
            }
            cell?.pressRighttButton = {
                let vc = FeesVC()
                vc.id = cellData.cartID ?? 0
                vc.modalPresentationStyle = .overCurrentContext
                
                self.present(vc, animated: true, completion: nil)
            }
        }
        
        return cell!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    
    
}



struct Home :BaseCodable{
    var value: Bool?
    var msg: String?
    var data : Resrev?
    
    
}

struct Resrev: Codable {
    var carts: [carts]
    let paginate: Paginate
}

struct carts: Codable {
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

struct Paginate: Codable {
    let total, count, perPage: Int
    //    let nextPageURL, prevPageURL: String?
    let currentPage, totalPages: Int
    
    enum CodingKeys: String, CodingKey {
        case total, count
        case perPage = "per_page"
        //        case nextPageURL = "next_page_url"
        //        case prevPageURL = "prev_page_url"
        case currentPage = "current_page"
        case totalPages = "total_pages"
    }
}
