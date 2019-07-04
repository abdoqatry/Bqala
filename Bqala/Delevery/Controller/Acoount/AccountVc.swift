//
//  AccountVc.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class AccountVc: BaseController {

    var mainview : AcouuntView!{
        return view as? AcouuntView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = AcouuntView()
        title = "Account"
        getdata()
    }
    
    var data: Caculates?
    
    func getdata(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/calculations"
        callApi(Caculates.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data = data
                self?.mainview.balanceView.text = data.data?.currentStoke
                if  let month = data.data?.incomeThisMonth{
                self?.mainview.blanceMonth.text = String(month)
                }
                self?.mainview.spendding.text = data.data?.refusedOrders
                self?.mainview.addmision.text = data.data?.acceptedOrders
                self?.mainview.Salary.text = data.data?.earnedThisMonth
                if let state = data.data?.equation{
                self?.mainview.statment.text = String(state)
                    self?.mainview.cash.text = data.data?.cashed
                }
                
                
            }
        }
        
    }
    
    
    



}




struct Caculates : BaseCodable{
    var value: Bool?
    
    var msg: String?
    
    let data : Caculate?
}


// MARK: - Caculate
struct Caculate: Codable {
    let earnedThisMonth, currentStoke, acceptedOrders, refusedOrders: String?
    let incomeThisMonth, equation: Int?
    let cashed: String?
    let lastOrders: [LastOrder]?
    
    enum CodingKeys: String, CodingKey {
        case earnedThisMonth = "earned_this_month"
        case currentStoke = "current_stoke"
        case acceptedOrders = "accepted_orders"
        case refusedOrders = "refused_orders"
        case incomeThisMonth = "income_this_month"
        case equation, cashed
        case lastOrders = "last_orders"
    }
}

// MARK: - LastOrder
struct LastOrder: Codable {
    let userName: String?
    let productsCount: Int?
    let chargeFees, date, myFees: String?
    
    enum CodingKeys: String, CodingKey {
        case userName = "user_name"
        case productsCount = "products_count"
        case chargeFees = "charge_fees"
        case date
        case myFees = "my_fees"
    }
}
