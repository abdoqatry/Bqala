//
//  DLoginVC.swift
//  Bqala
//
//  Created by Moe on 5/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class DLoginVC: BaseController {
    
    var mainview : DLoginView!{
        return view as? DLoginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DLoginView()
        setTarget()
       
        
    }
   
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc func forgetpass(){
        navigationController?.pushViewController(DForgetPassVC(), animated: true)
    }
    
    func setTarget(){
        mainview.forgetBuuton.addTarget(self, action: #selector(forgetpass), for: .touchUpInside)
         mainview.singinButton.addTarget(self, action: #selector(Login), for: .touchUpInside)
        mainview.acountButt.addTarget(self, action: #selector(newacount), for: .touchUpInside)
        
    }
    
    @objc func newacount(){
        navigationController?.pushViewController(DRegisterVC(), animated: true)
    }
    
    @objc func Login(){
        guard let email = mainview.phonenumber.text , email.isEmail else {
            showAlert(title: "enter valid email addres", messages: nil, message: nil, selfDismissing: false)
      return  }
        guard let password = mainview.password.text , !password.isEmpty, password.count > 5 else{
           showAlert(title: "enter your password must be more than 5 character", messages: nil, message: nil, selfDismissing: false)
     return   }
        let url = "http://bqala.panorama-q.com/api/auth/login"
        let pars = [
            "email": email,
            "password": password,
            "fcm_token_ios": "123"
            ] as [String : Any]
        SVProgressHUD.show()
        callApi(LoginModel.self, url: url, parameters: pars) { [weak self] (data) in
            if let user = data {
                SVProgressHUD.dismiss()
                guard let userData = user.data else { return }
                AuthService.instance.setUserDefaults(user: userData)
                self?.navigationController?.pushViewController(DHomeVc(), animated: true)
            }
        }
        
    }
    
   



}





struct LoginModel : BaseCodable{
    var value: Bool?
    var msg: String?
    let data : UserDate?
    
}


// MARK: - UserDate
struct UserDate: Codable {
    let id: Int?
    let name, email, phone, role: String?
    let image: String?
    let lat, lng: Double?
    let address: String?
    let verified: Int?
    let token, identityNumber: String?
    let identityImage, carImage: String?
    let carNumber, licenseNumber: String?
    let licenseImage, carFormImage: String?
    let carModel, carType: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name, email, phone, role, image, lat, lng, address, verified, token
        case identityNumber = "identity_number"
        case identityImage = "identity_image"
        case carImage = "car_image"
        case carNumber = "car_number"
        case licenseNumber = "license_number"
        case licenseImage = "license_image"
        case carFormImage = "car_form_image"
        case carModel = "car_model"
        case carType = "car_type"
    }
}
