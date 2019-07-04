//
//  CurrentORderVC.swift
//  Bqala
//
//  Created by Moe on 6/15/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class CurrentORderVC:BaseController {

    var mainview : CurrnetOrderView!{
        return view as? CurrnetOrderView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = CurrnetOrderView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        setupSideMenu()
        let upload =  AuthService.instance.uploadimage
        if upload == 2{
            mainview.photobutton.isHidden = true
            mainview.agrrebutton.isHidden = false
        }else if AuthService.instance.uploadimage == 1{
            mainview.photobutton.isHidden = false
            mainview.agrrebutton.isHidden = true
    }
        print("id is \(upload)")
        settarget()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getData()
        title = "Current order"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SVProgressHUD.dismiss()
    }
    
    var data: CurrCart? {
        didSet {
            mainview.mainTableView.reloadData()
        }
    }
    
    func getData(){
        SVProgressHUD.show()
       
        let url = "http://bqala.panorama-q.com/api/delivery/current-cart"
        callApi(CurrCart.self, url: url,method: .get, parameters: nil) {[weak self] (data) in
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
    
    @objc func uploadimage(){
        AuthService.instance.uploadimage = 1
        mainview.photobutton.isHidden = true
        mainview.agrrebutton.isHidden = false
       
    }
    @objc func finish(){
        AuthService.instance.uploadimage = 2
        mainview.photobutton.isHidden = false
        mainview.agrrebutton.isHidden = true
        let vc = UploadPhoto()
        vc.id = data?.data?.cartID ?? 0
        vc.payed = data?.data?.paid ?? 0
        vc.modalPresentationStyle = .overCurrentContext
        
        self.present(vc, animated: true, completion: nil)
    }
    
    func settarget(){
        mainview.agrrebutton.addTarget(self, action: #selector(finish), for: .touchUpInside)
        mainview.photobutton.addTarget(self, action: #selector(uploadimage), for: .touchUpInside)
        
    }

  

}


extension CurrentORderVC : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = data?.data?.items?.count{
            return  count
        }else{
            return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "CurrentOrderCell") as? CurrentOrderCell
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


    



struct CurrCart : BaseCodable{
    var value: Bool?
    var msg: String?
    let data : Currentcarts?
    
}

struct Currentcarts: Codable {
    let id: Int?
    let createdAt, deliveryMan: String?
    let deliveryManID: Int?
    let deliveryImage: String?
    let location, deliveryManPhone: String?
    let cartID: Int?
    let currentChargeFees: String?
    let lastChargeFees: Int?
    let image, userImage: String?
    let userName: String?
    let userID, paid: Int?
    let items: [Items]?
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
struct Items: Codable {
    let id: Int?
    let productName, size, unit: String?
    let quantity : Int?
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
