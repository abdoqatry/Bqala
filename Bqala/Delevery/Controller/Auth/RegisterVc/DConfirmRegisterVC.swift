//
//  DConfirmRegisterVC.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class DConfirmRegisterVC: BaseController {
    
    var mainView : DConfirmRegisterView!{
        return view as? DConfirmRegisterView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DConfirmRegisterView()
        textfieldDelegate()
        setUnderLineButton()
        settarget()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
    }
    
    
    
    
    @objc func editTextField(textField : UITextField){
        let text = textField.text
        if langue == "ar" {
            if (text?.utf16.count)! >= 1 {
                switch textField{
                case mainView.CodeText4:
                    mainView.CodeText3.becomeFirstResponder()
                case mainView.CodeText3:
                    mainView.CodeText2.becomeFirstResponder()
                case mainView.CodeText2:
                    mainView.CodeText1.becomeFirstResponder()
                case mainView.CodeText1:
                    mainView.CodeText1.resignFirstResponder()
                default:
                    break
                }
                
            }else {
            }
        }else if langue == "en"{
            
            if (text?.utf16.count)! >= 1 {
                switch textField{
                case mainView.CodeText1:
                    mainView.CodeText2.becomeFirstResponder()
                case mainView.CodeText2:
                    mainView.CodeText3.becomeFirstResponder()
                case mainView.CodeText3:
                    mainView.CodeText4.becomeFirstResponder()
                case mainView.CodeText4:
                    mainView.CodeText4.resignFirstResponder()
                default:
                    break
                }
                
            }else {
            }
        }
    }
    
    func textfieldDelegate(){
        mainView.CodeText1.delegate = self
        mainView.CodeText2.delegate = self
        mainView.CodeText3.delegate = self
        mainView.CodeText4.delegate = self
        
        mainView.CodeText1.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainView.CodeText2.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainView.CodeText3.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
        mainView.CodeText4.addTarget(self, action: #selector(editTextField), for: UIControl.Event.editingChanged)
    }
    
    
    @objc func confirm(){
        let str = mainView.textFieldArray.compactMap{$0.text}.joined()
        //        let str = mainView.textFieldArray.compactMap{$0.text}.joined()
        var reversed = ""
        if langue == "ar"{
            reversed = String(str.reversed())
        }else{
            reversed = str
        }
        guard let code = mainView.CodeText4.text , !code.isEmpty else {
            self.showAlert(title:"please enter code hasbeen recived".localize , messages: nil, message: nil, selfDismissing: false)
            return   }
        let url = "http://bqala.panorama-q.com/api/auth/verify"
        let parameter = [
            "verification_code" : reversed
        ]
        SVProgressHUD.show()
        callApi(CheckPhone.self, url:url, parameters: parameter) {[weak self] (data) in
            SVProgressHUD.dismiss()
            if data != nil{
                self?.navigationController?.pushViewController(DLoginVC(), animated: true)
            }
        }
        
    }
  
    func settarget(){
        mainView.ConfirmButton.addTarget(self, action: #selector(confirm), for: .touchUpInside)
    }
 
    
    func setUnderLineButton(){
        let button =  NSLocalizedString("Resent the code", comment: "")
        let attributeString = NSMutableAttributedString(string:button ,
                                                        attributes: yourAttributes)
        mainView.resentButton.setAttributedTitle(attributeString, for: .normal)
    }
    // set up under line Button
    let yourAttributes : [NSAttributedString.Key: Any] = [
        NSAttributedString.Key.font : UIFont.systemFont(ofSize: 14),
        NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1) ,
        NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue]

}


extension DConfirmRegisterVC : UITextFieldDelegate{
    
    private func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
}



struct CheckPhone : BaseCodable{
    var value: Bool?
    var msg: String?
    let data: Phone?
}

struct Phone: Codable {
    let id: Int?
    let name, email, phone, role: String?
    let image: String?
    let lat, lng: Int?
    let address: String?
    let verified: Int?
    let token: String?
    
   
}
