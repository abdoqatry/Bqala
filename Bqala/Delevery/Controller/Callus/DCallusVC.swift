//
//  DCallusVC.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class DCallusVC: BaseController {
    
    
    var mainview : DCallUsView!{
        return view as? DCallUsView
    }
    
    var face = ""
    var wep = ""
    var inst = ""
    var snap = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DCallUsView()
        settarget()
        setupSideMenu()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.tintColor = .black
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.black
        ]
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        title = "call us"
        getdata()
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.show()
    }
    
    var data: Aboutus?
    var data2 : Callus?
    
    func getdata(){
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/settings/about"
        
        callApi(Aboutus.self, url: url, method: .get, parameters: nil) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data = data
                self?.mainview.numLabl1e.text = data.data?.phonesNumbers
                self?.mainview.addres.text = data.data?.companyAddress
                self?.mainview.mail.text = data.data?.companyEmail
                self?.face = data.data?.facebook ?? ""
                self?.snap = data.data?.snap ?? ""
                self?.wep = data.data?.website ?? ""
                self?.inst = data.data?.insta ?? ""
            }
        }
        
    }
    
   @objc func postdata(){
        SVProgressHUD.show()
        guard let mail = mainview.mailtext.text, !mail.isEmpty else{
            showAlert(title: "please enter your phone or email", messages: nil, message: nil, selfDismissing: true)
       return }
        
        guard let name = mainview.nametext.text, !mail.isEmpty else{
            showAlert(title: "please enter your name ", messages: nil, message: nil, selfDismissing: true)
            return }
        guard let title = mainview.massagetext.text, !mail.isEmpty else{
            showAlert(title: "please enter your massage title ", messages: nil, message: nil, selfDismissing: true)
            return }
        
        guard let body = mainview.detailstext.text, !mail.isEmpty else{
            showAlert(title: "please enter your massage body ", messages: nil, message: nil, selfDismissing: true)
            return }
        let url = "http://bqala.panorama-q.com/api/contact-us"
        let parameter = [
            "email_or_phone" : mail,
            "name" : name,
            "title" : title,
            "body" : body
        ]
        
        callApi(Callus.self, url: url, parameters: parameter) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if let data = data{
                self?.data2 = data
                self?.showAlert(title: "massage sent", messages: nil, message: nil, selfDismissing: true)
               
            }
        }
        
    }
    
    
    
    @objc func sendMail(){
        let to = mainview.mail.text!
        guard let url = URL(string: "mailto:\(to)") else {
            
            return //be safe
        }
        UIApplication.shared.open(url)
    }
    
    // make it clickable
    @objc func faceBook(){
        guard let url = URL(string: face) else{
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
  
    @objc func SanpCh (){
        guard let url = URL(string: snap) else{
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    @objc func insta(){
        guard let url = URL(string: inst) else{
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    @objc func Webserves(){
        guard let url = URL(string: wep) else{
            return
        }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

    func settarget(){
        mainview.send.addTarget(self, action: #selector(postdata), for: .touchUpInside)
    }
    

 

}

struct Callus : BaseCodable{
    var value: Bool?
    
    var msg: String?
    
    let data : Call?
}

struct Call: Codable {
    let status: Bool?
}
