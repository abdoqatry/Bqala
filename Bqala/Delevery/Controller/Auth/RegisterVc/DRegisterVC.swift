//
//  DRegisterVC.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DRegisterVC: BaseController {
    
    var mainview : DRegisterView!{
        return view as? DRegisterView
    }

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DRegisterView()
        setTarget()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
        
    }
    
    
    @objc func Next(){
        let lon = LocationManager.SharedInstans.getlongitude()
        let lat = LocationManager.SharedInstans.getlatitude()
        guard let name = mainview.user.text, !name.isEmpty else{
            showAlert(title: "please enter you name", messages: nil, message: nil, selfDismissing: true)
       return }
        guard let phone = mainview.phone.text, !phone.isEmpty, phone.count > 9 else{
            showAlert(title: "please enter you phone number must be more than 9 number", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let mail = mainview.mail.text, !mail.isEmpty, mail.isEmail else{
            showAlert(title: "please enter you valid Email", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let place = mainview.place.text, !place.isEmpty else{
            showAlert(title: "please enter you address", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let pass = mainview.password.text, !pass.isEmpty, pass.count > 5 else{
            showAlert(title: "please enter you password must be more 5 chracter", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let repass = mainview.repassword.text, repass == pass else{
            showAlert(title: "password is'nt match", messages: nil, message: nil, selfDismissing: true)
            return }
        if lon == 0.0 {
            showAlert(title: "you need to open Gps", messages: nil, message: nil, selfDismissing: true)
            return
        }
        if lat == 0.0 {
            showAlert(title: "you need to open Gps", messages: nil, message: nil, selfDismissing: true)
            return
        }
        print(lat)
        print(lon)
        
        let vc = DcarRegisterVC()
        vc.name = name
        vc.email = mail
        vc.place = place
        vc.phone = phone
        vc.paasword = pass
        vc.lat = lat
        vc.lon = lon
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func setTarget(){
        mainview.NextButton.addTarget(self, action: #selector(Next), for: .touchUpInside)
    }
    

    
    



}









