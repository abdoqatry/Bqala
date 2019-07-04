//
//  DConformPassVc.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DConformPassVc: BaseController {

    var mainView : DconfirmPassView!{
        return view as? DconfirmPassView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DconfirmPassView()
        textfieldDelegate()
        setUnderLineButton()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
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


extension DConformPassVc : UITextFieldDelegate{
    
    private func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
}
