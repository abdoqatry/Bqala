//
//  TripRecordVC.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class TripRecordVC: BaseController {
    
    var mainview : TripRecordView!{
        return view as? TripRecordView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = TripRecordView()
        setdefaul()
        getdata()
        setupSideMenu()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
        title = "trip order"
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SVProgressHUD.dismiss()
    }
    
    var data: trips?
    
    func getdata(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/orders-logs"
        callApi(trips.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            
            if let data = data{
                self?.data = data
                if let evalut = data.data?.deliveryRates{
                self?.mainview.evalute.text = String(evalut)
                }
                if let curre = data.data?.currentCartsCount{
                    self?.mainview.currentnumber.text = String(curre)
                }
                if let finish = data.data?.finishedCartsCount{
                    self?.mainview.finishednumber.text = String(finish)
                }
                if let pending = data.data?.pendingCartsCount{
                    self?.mainview.cancelnumber.text = String(pending)
                }
                self?.mainview.endPrograss.value = CGFloat((data.data?.pendingCartsPercentage)!)
                
                self?.mainview.cancelPrograss.value = CGFloat((data.data?.finishedCartsPercentage)!)
                 self?.mainview.currentPrograss.value = CGFloat((data.data?.currentCartsPercentage)!)
            }
            SVProgressHUD.dismiss()
        }
        
    }
    
    @objc func acoount(){
        navigationController?.pushViewController(AccountVc(), animated: true)
    }
    
    func setdefaul(){
        
        let url = URL(string: AuthService.instance.userImage ?? "")
        mainview.personalImage.kf.setImage(with: url)
        mainview.namelabel.text = AuthService.instance.userName
        mainview.recordButton.addTarget(self, action: #selector(acoount), for: .touchUpInside)
        
    }
    



}


struct trips: BaseCodable{
    var value: Bool?
    
    var msg: String?
    
    let data : Trip?
}

// MARK: - Trip
struct Trip: Codable {
    let deliveryRates, currentCartsCount, finishedCartsCount, refusedCartsCount: Int?
    let pendingCartsCount, currentCartsPercentage, finishedCartsPercentage, refusedCartsPercentage: Int?
    let pendingCartsPercentage: Double?
    
    enum CodingKeys: String, CodingKey {
        case deliveryRates = "delivery_rates"
        case currentCartsCount = "current_carts_count"
        case finishedCartsCount = "finished_carts_count"
        case refusedCartsCount = "refused_carts_count"
        case pendingCartsCount = "pending_carts_count"
        case currentCartsPercentage = "current_carts_percentage"
        case finishedCartsPercentage = "finished_carts_percentage"
        case refusedCartsPercentage = "refused_carts_percentage"
        case pendingCartsPercentage = "pending_carts_percentage"
    }
}
