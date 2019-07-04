//
//  RateVc.swift
//  Bqala
//
//  Created by Moe on 6/16/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import Cosmos
import SVProgressHUD

class RateVc: UIViewController {
    
    var contentView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5906999144)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.clipsToBounds = true
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
  
    var sizeView : CosmosView = {
        let view = CosmosView()
        view.settings.fillMode = .full
        view.settings.starSize = 30
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var evalutetext : UITextField = {
        let text = UITextField()
        text.placeholder = "add description".localize
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 6
        text.clipsToBounds = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

    var confirm: UIButton = {
    let button = UIButton()
        button.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        button.setTitle("confirm", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
    return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view.isOpaque = false
        contentView.isUserInteractionEnabled = true
        contentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.diss)))
        setview()
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
    }
    
    @objc func diss(){
        dismiss(animated: true, completion: nil)
    }
    
    var id = 0
    var data: Rates?

   @objc func postdata(){
        let caprate = Int(sizeView.rating)
    
        SVProgressHUD.show()
    RatesApi.rates1(id: id, rate: caprate) { (error, massage, status) in
        if error == nil{
            SVProgressHUD.dismiss()
            if status == true{
                self.showAlert(title: "نم التقيم", messages: nil, message: nil, selfDismissing: true)
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // Change `2.0` to the desired number of seconds.
                    self.dismiss(animated: true, completion: nil)
                }
                
            }else{
                 SVProgressHUD.dismiss()
                self.showAlert(title: massage, messages: nil, message: nil, selfDismissing: false)
            }
        }else{
             SVProgressHUD.dismiss()
            self.showAlert(title: "check your connection", messages: nil, message: nil, selfDismissing: false)
        }
    }

    }
    
    
    func setview(){
        confirm.addTarget(self, action: #selector(postdata), for: .touchUpInside)
        view.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        view.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            mainview.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            mainview.widthAnchor.constraint(equalToConstant: 330),
            mainview.heightAnchor.constraint(equalToConstant: 240)
            ])
        mainview.addSubview(sizeView)
        NSLayoutConstraint.activate([
            sizeView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 30),
//            sizeView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -30),
            sizeView.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            sizeView.heightAnchor.constraint(equalToConstant: 70),
            sizeView.widthAnchor.constraint(equalToConstant: 200)
            
            ])
        mainview.addSubview(evalutetext)
        NSLayoutConstraint.activate([
            evalutetext.topAnchor.constraint(equalTo: sizeView.bottomAnchor, constant: 10),
            evalutetext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            evalutetext.heightAnchor.constraint(equalToConstant: 30),
            evalutetext.widthAnchor.constraint(equalToConstant: 200)
            ])
        mainview.addSubview(confirm)
        NSLayoutConstraint.activate([
            confirm.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0),
            confirm.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            confirm.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            confirm.heightAnchor.constraint(equalToConstant: 40)
            
            ])

    }



}

struct Rates:BaseCodable{
    var value: Bool?
    
    var msg: String?
    
   let data: Rate
}

// MARK: - Rate
struct Rate: Codable {
    let status: Bool?
}
