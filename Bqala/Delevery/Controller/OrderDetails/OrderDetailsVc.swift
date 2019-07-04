//
//  OrderDetailsVc.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class OrderDetailsVc: BaseController {
    
    var mainview : OrderDetailsView!{
        return view as? OrderDetailsView
    }
    
    var id = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OrderDetailsView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        settarget()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getData()
        title = "new order details"
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
    
    @objc func agree(){
        let vc = FeesVC()
        vc.id = data?.data?.cartID ?? 0
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func settarget(){
        mainview.agrrebutton.addTarget(self, action: #selector(agree), for: .touchUpInside)
    }
 

}

extension OrderDetailsVc : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = data?.data?.items?.count{
        return  count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "OrderDetailsCell") as? OrderDetailsCell
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




struct CartDet : BaseCodable{
    var value: Bool?
    var msg: String?
    let data: CartsDetails?
    
}


// MARK: - Carts
struct CartsDetails: Codable {
    let id: Int?
    let createdAt: String?
    let deliveryMan : String?
    let deliveryManID: Int?
    let deliveryImage: String?
    let location: String?
    let deliveryManPhone: String?
    let cartID: Int?
    let currentChargeFees: String?
    let lastChargeFees: Int?
    let image: String?
    let userImage: String?
    let userName: String?
    let userID: Int?
    let paid: String?
    let items: [Item]?
    let cartStatus: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case createdAt = "created_at"
        case deliveryMan = "delivery_man"
        case deliveryManID = "delivery_man_id"
        case deliveryImage = "delivery_image"
        case location
        case deliveryManPhone = "delivery_man_phone"
        case cartID = "cart_id"
        case currentChargeFees = "current_charge_fees"
        case lastChargeFees = "last_charge_fees"
        case image
        case userImage = "user_image"
        case userName = "user_name"
        case userID = "user_id"
        case paid, items
        case cartStatus = "cart_status"
    }
}

// MARK: - Item
struct Item: Codable {
    let id: Int?
    let productName, size, unit: String?
    let quantity: Int?
    let productImage: String?
    let message: String?
    let isSuperMarket: Bool?
    let mainCategoryImage: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case productName = "product_name"
        case size, unit, quantity
        case productImage = "product_image"
        case message
        case isSuperMarket = "is_super_market"
        case mainCategoryImage = "main_category_image"
    }
}
