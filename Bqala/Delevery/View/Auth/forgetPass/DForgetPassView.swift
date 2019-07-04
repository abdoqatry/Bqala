//
//  DForgetPassView.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DForgetPassView: UIView {

  
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "-e-Rounded Rectangle 1 copy 36-2")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
  
    var singLabel : UILabel = {
        let label = UILabel()
        label.text = "Change password"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 13)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // phone
    var userView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var userImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "smartphone-call")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var phone : UITextField = {
        let text = UITextField()
        text.placeholder = "phone number"
                text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
        text.isSecureTextEntry = true
        //        text.backgroundColor = .green
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line1 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //  phone number
    var phoneView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phoneImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "key")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var password : UITextField = {
        let text = UITextField()
        text.placeholder = "new password"
        text.keyboardType = .asciiCapableNumberPad
        text.keyboardType = .asciiCapable
        text.isSecureTextEntry = true
        //        text.backgroundColor = .green
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line2 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//
//    //   email
//    var emailView : UIView = {
//        let view = UIView()
//
//        //                view.backgroundColor = .green
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    var emailImage : UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: "envelope (1)")
//        image.contentMode = .scaleAspectFit
//
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
//    var mail : UITextField = {
//        let text = UITextField()
//        text.placeholder = "your mail"
//        //        text.keyboardType = .asciiCapableNumberPad
//        //        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
//        //        text.backgroundColor = .green
//        text.translatesAutoresizingMaskIntoConstraints = false
//        return text
//    }()
//    var line3 : UIView = {
//        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//    //   password
//    var passwordView : UIView = {
//        let view = UIView()
//
//        //                view.backgroundColor = .green
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    var passwordImage : UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: "key")
//        image.contentMode = .scaleAspectFit
//
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
//    var password : UITextField = {
//        let text = UITextField()
//        text.placeholder = "your password"
//        text.keyboardType = .asciiCapableNumberPad
//        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
//        text.isSecureTextEntry = true
//        //        text.backgroundColor = .green
//        text.translatesAutoresizingMaskIntoConstraints = false
//        return text
//    }()
//    var line4 : UIView = {
//        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//    //   repassword
//    var repasswordView : UIView = {
//        let view = UIView()
//
//        //                view.backgroundColor = .green
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    var repasswordImage : UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: "key")
//        image.contentMode = .scaleAspectFit
//
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
//    var repassword : UITextField = {
//        let text = UITextField()
//        text.placeholder = "your password"
//        text.keyboardType = .asciiCapableNumberPad
//        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
//        text.isSecureTextEntry = true
//        //        text.backgroundColor = .green
//        text.translatesAutoresizingMaskIntoConstraints = false
//        return text
//    }()
//    var line5 : UIView = {
//        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
//
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    var NextButton : UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        button.layer.cornerRadius = 16
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    
    func setUpView(){
        addSubview(mainView)
        NSLayoutConstraint.activate([
            mainView.topAnchor.constraint(equalTo: self.topAnchor),
            mainView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainView.addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            mainImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainImage.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
//        mainView.addSubview(personalimage)
//        NSLayoutConstraint.activate([
//            personalimage.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 100),
//            personalimage.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 60),
//            personalimage.heightAnchor.constraint(equalToConstant: 50),
//            personalimage.widthAnchor.constraint(equalToConstant: 50)
//            ])
        mainImage.addSubview(singLabel)
        NSLayoutConstraint.activate([
            singLabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 230),
            singLabel.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            
            ])
        // user view
        mainView.addSubview(userView)
        NSLayoutConstraint.activate([
            userView.topAnchor.constraint(equalTo: singLabel.bottomAnchor, constant: 30),
            userView.leadingAnchor.constraint(equalTo: singLabel.leadingAnchor, constant: 0),
            userView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            userView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(userImage)
        NSLayoutConstraint.activate([
            userImage.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 5),
            userImage.topAnchor.constraint(equalTo: userView.topAnchor, constant: 10),
            userImage.heightAnchor.constraint(equalToConstant: 20),
            userImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: userView.topAnchor, constant: 15),
            phone.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            phone.trailingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // phone numbr
        mainView.addSubview(phoneView)
        NSLayoutConstraint.activate([
            phoneView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 10),
            phoneView.leadingAnchor.constraint(equalTo: singLabel.leadingAnchor, constant: 0),
            phoneView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            phoneView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(phoneImage)
        NSLayoutConstraint.activate([
            phoneImage.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: 5),
            phoneImage.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 10),
            phoneImage.heightAnchor.constraint(equalToConstant: 20),
            phoneImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(password)
        NSLayoutConstraint.activate([
            password.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 15),
            password.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0),
            password.trailingAnchor.constraint(equalTo: phoneImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // email
//        mainView.addSubview(emailView)
//        NSLayoutConstraint.activate([
//            emailView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 10),
//            emailView.leadingAnchor.constraint(equalTo: singLabel.leadingAnchor, constant: 0),
//            emailView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
//            emailView.heightAnchor.constraint(equalToConstant: 40)
//            ])
//        mainView.addSubview(emailImage)
//        NSLayoutConstraint.activate([
//            emailImage.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 5),
//            emailImage.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 10),
//            emailImage.heightAnchor.constraint(equalToConstant: 20),
//            emailImage.widthAnchor.constraint(equalToConstant: 20)
//            ])
//        mainView.addSubview(mail)
//        NSLayoutConstraint.activate([
//            mail.topAnchor.constraint(equalTo: emailView.topAnchor, constant: 15),
//            mail.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 0),
//            mail.trailingAnchor.constraint(equalTo: emailImage.leadingAnchor, constant: -5)
//            ])
//        mainView.addSubview(line3)
//        NSLayoutConstraint.activate([
//            line3.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 0),
//            line3.leadingAnchor.constraint(equalTo: emailView.leadingAnchor, constant: 0),
//            line3.trailingAnchor.constraint(equalTo: emailView.trailingAnchor, constant: 0),
//            line3.heightAnchor.constraint(equalToConstant: 1)
//            ])
//        // password
//        mainView.addSubview(passwordView)
//        NSLayoutConstraint.activate([
//            passwordView.topAnchor.constraint(equalTo: emailView.bottomAnchor, constant: 10),
//            passwordView.leadingAnchor.constraint(equalTo: singLabel.leadingAnchor, constant: 0),
//            passwordView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
//            passwordView.heightAnchor.constraint(equalToConstant: 40)
//            ])
//        mainView.addSubview(passwordImage)
//        NSLayoutConstraint.activate([
//            passwordImage.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 5),
//            passwordImage.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 10),
//            passwordImage.heightAnchor.constraint(equalToConstant: 15),
//            passwordImage.widthAnchor.constraint(equalToConstant: 15)
//            ])
//        mainView.addSubview(password)
//        NSLayoutConstraint.activate([
//            password.topAnchor.constraint(equalTo: passwordView.topAnchor, constant: 15),
//            password.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0),
//            password.trailingAnchor.constraint(equalTo: passwordImage.leadingAnchor, constant: -5)
//            ])
//        mainView.addSubview(line4)
//        NSLayoutConstraint.activate([
//            line4.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 0),
//            line4.leadingAnchor.constraint(equalTo: passwordView.leadingAnchor, constant: 0),
//            line4.trailingAnchor.constraint(equalTo: passwordView.trailingAnchor, constant: 0),
//            line4.heightAnchor.constraint(equalToConstant: 1)
//            ])
//        // repassword
//        mainView.addSubview(repasswordView)
//        NSLayoutConstraint.activate([
//            repasswordView.topAnchor.constraint(equalTo: passwordView.bottomAnchor, constant: 10),
//            repasswordView.leadingAnchor.constraint(equalTo: singLabel.leadingAnchor, constant: 0),
//            repasswordView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
//            repasswordView.heightAnchor.constraint(equalToConstant: 40)
//            ])
//        mainView.addSubview(repasswordImage)
//        NSLayoutConstraint.activate([
//            repasswordImage.trailingAnchor.constraint(equalTo: repasswordView.trailingAnchor, constant: 5),
//            repasswordImage.topAnchor.constraint(equalTo: repasswordView.topAnchor, constant: 10),
//            repasswordImage.heightAnchor.constraint(equalToConstant: 15),
//            repasswordImage.widthAnchor.constraint(equalToConstant: 15)
//            ])
//        mainView.addSubview(repassword)
//        NSLayoutConstraint.activate([
//            repassword.topAnchor.constraint(equalTo: repasswordView.topAnchor, constant: 15),
//            repassword.leadingAnchor.constraint(equalTo: repasswordView.leadingAnchor, constant: 0),
//            repassword.trailingAnchor.constraint(equalTo: repasswordImage.leadingAnchor, constant: -5)
//            ])
//        mainView.addSubview(line5)
//        NSLayoutConstraint.activate([
//            line5.topAnchor.constraint(equalTo: repasswordView.bottomAnchor, constant: 0),
//            line5.leadingAnchor.constraint(equalTo: repasswordView.leadingAnchor, constant: 0),
//            line5.trailingAnchor.constraint(equalTo: repasswordView.trailingAnchor, constant: 0),
//            line5.heightAnchor.constraint(equalToConstant: 1)
//            ])
        mainView.addSubview(NextButton)
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 40),
            NextButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 60),
            NextButton.heightAnchor.constraint(equalToConstant: 35),
            NextButton.widthAnchor.constraint(equalToConstant: 160)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
