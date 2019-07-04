//
//  DcarRegisterVC.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DcarRegisterVC: BaseController {
    
    var mainview : DCarRegisterView!{
        return view as? DCarRegisterView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DCarRegisterView()
        
    }
    var name = ""
    var phone = ""
    var email = ""
    var place = ""
    var paasword = ""
    var lat = 0.0
    var lon = 0.0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
        setTarget()
    }
    
    @objc func next2(){
        guard let kind = mainview.kindcar.text, !kind.isEmpty else{
            showAlert(title: "please enter you kind of car", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let number = mainview.carnumber.text, !number.isEmpty else{
            showAlert(title: "please enter car number", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let model = mainview.carModel.text, !model.isEmpty else{
            showAlert(title: "please enter car Model", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let identy = mainview.Identity.text, !identy.isEmpty else{
            showAlert(title: "please enter your Identity number", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let licences = mainview.licensnumber.text, !licences.isEmpty else{
            showAlert(title: "please enter your licences number", messages: nil, message: nil, selfDismissing: true)
            return }
        let vc = DRegisterPhotosVC()
        vc.name1 = name
        vc.phone1 = phone
        vc.email1 = email
        vc.place1 = place
        vc.paasword1 = paasword
        vc.kind = kind
        vc.number = number
        vc.model = model
        vc.identy = identy
        vc.licences = licences
        vc.lat = String(lat)
        vc.lon = String(lon)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setTarget(){
        mainview.NextButton.addTarget(self, action: #selector(next2), for: .touchUpInside)
    }



}
