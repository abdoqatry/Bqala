//
//  DAboutVc.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class DAboutVc: BaseController {
    
    var mainview : DAboutView!{
        return view as? DAboutView
    }

    var face = ""
    var wep = ""
    var inst = ""
    var snap = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DAboutView()
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
        title = "About us"
        getdata()
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
        
    }
    
    var data: Aboutus?
    
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
//    @objc func TwitterButt(){
//        guard let url = URL(string: inst) else{
//            return
//        }
//        UIApplication.shared.open(url, options: [:], completionHandler: nil)
//    }
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

    

}



struct Aboutus : BaseCodable{
    var value: Bool?
    var msg: String?
    let data : Contact?
    
}

struct Contact: Codable {
    let phonesNumbers, companyAddress, companyEmail: String?
    let facebook, insta, snap, website: String?
    let content: String?
    
    enum CodingKeys: String, CodingKey {
        case phonesNumbers = "phones_numbers"
        case companyAddress = "company_address"
        case companyEmail = "company_email"
        case facebook, insta, snap, website, content
    }
}
