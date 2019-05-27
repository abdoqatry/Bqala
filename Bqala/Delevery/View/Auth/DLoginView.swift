//
//  DLoginView.swift
//  Bqala
//
//  Created by Moe on 5/25/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DLoginView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainImage : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "Layer 1")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var Singlabel : UILabel = {
       let label = UILabel()
        label.text = "Sing in"
        label.textColor = #colorLiteral(red: 0.5215686275, green: 0.5215686275, blue: 0.5215686275, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phoneView : UIView = {
       let view = UIView()
        
//        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var phoneImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "envelope (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var phonenumber : UITextField = {
       let text = UITextField()
        text.placeholder = "phone number or mail"
        text.keyboardType = .asciiCapableNumberPad
        text.keyboardType = .asciiCapable
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
    var passView : UIView = {
        let view = UIView()
        
        //        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var passImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "key")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var password : UITextField = {
        let text = UITextField()
        text.placeholder = "password"
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
    var forgetBuuton : UIButton = {
       let button = UIButton()
        button.setTitle("forget password ?", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var singinButton : UIButton = {
       let button = UIButton()
        button.setTitle("Sing in", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        button.layer.cornerRadius = 16
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var haveacount : UILabel = {
        let lable = UILabel()
        lable.text = "don't Have an account".localize
        lable.font = UIFont.systemFont(ofSize: 11)
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var acountButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("sign up".localize, for: .normal)
        butt.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        butt.setTitleColor( #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.7411764706, alpha: 1), for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    lazy var stackViewAcount: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [haveacount, acountButt])
        stackView.alignment = .center
        stackView.distribution = .fillProportionally
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
    mainImage.addSubview(Singlabel)
    NSLayoutConstraint.activate([
        Singlabel.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 40),
        Singlabel.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 120)
        ])
    mainView.addSubview(phoneView)
    NSLayoutConstraint.activate([
        phoneView.leadingAnchor.constraint(equalTo: Singlabel.leadingAnchor, constant: 0),
        phoneView.topAnchor.constraint(equalTo: Singlabel.bottomAnchor, constant: 20),
        phoneView.heightAnchor.constraint(equalToConstant: 50),
        phoneView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -40)
        ])
    phoneView.addSubview(phoneImage)
    NSLayoutConstraint.activate([
        phoneImage.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 20),
        phoneImage.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: -5),
        phoneImage.heightAnchor.constraint(equalToConstant: 20),
        phoneImage.widthAnchor.constraint(equalToConstant: 20)
        
        ])
    phoneView.addSubview(phonenumber)
    NSLayoutConstraint.activate([
        phonenumber.topAnchor.constraint(equalTo: phoneView.topAnchor, constant: 20),
        phonenumber.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0),
        phonenumber.trailingAnchor.constraint(equalTo: phoneImage.leadingAnchor, constant: -5)
        ])
    mainImage.addSubview(line1)
    NSLayoutConstraint.activate([
        line1.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 2),
        line1.leadingAnchor.constraint(equalTo: phoneView.leadingAnchor, constant: 0),
        line1.trailingAnchor.constraint(equalTo: phoneView.trailingAnchor, constant: 0),
        line1.heightAnchor.constraint(equalToConstant: 1)
        ])
    
    mainView.addSubview(passView)
    NSLayoutConstraint.activate([
        passView.leadingAnchor.constraint(equalTo: Singlabel.leadingAnchor, constant: 0),
        passView.topAnchor.constraint(equalTo: phoneView.bottomAnchor, constant: 30),
        passView.heightAnchor.constraint(equalToConstant: 50),
        passView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -40)
        ])
    passView.addSubview(passImage)
    NSLayoutConstraint.activate([
        passImage.topAnchor.constraint(equalTo: passView.topAnchor, constant: 20),
        passImage.trailingAnchor.constraint(equalTo: passView.trailingAnchor, constant: -5),
        passImage.heightAnchor.constraint(equalToConstant: 20),
        passImage.widthAnchor.constraint(equalToConstant: 20)
        
        ])
    passView.addSubview(password)
    NSLayoutConstraint.activate([
        password.topAnchor.constraint(equalTo: passView.topAnchor, constant: 20),
        password.leadingAnchor.constraint(equalTo: passView.leadingAnchor, constant: 0),
        password.trailingAnchor.constraint(equalTo: passImage.leadingAnchor, constant:-5)
        ])
    mainImage.addSubview(line2)
    NSLayoutConstraint.activate([
       line2.topAnchor.constraint(equalTo: passView.bottomAnchor, constant: 2),
       line2.leadingAnchor.constraint(equalTo: passView.leadingAnchor, constant: 0),
       line2.trailingAnchor.constraint(equalTo: passView.trailingAnchor, constant: 0),
       line2.heightAnchor.constraint(equalToConstant: 1)
        ])
    mainView.addSubview(forgetBuuton)
    NSLayoutConstraint.activate([
        forgetBuuton.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 25),
        forgetBuuton.trailingAnchor.constraint(equalTo: passImage.trailingAnchor, constant: 0),
        forgetBuuton.heightAnchor.constraint(equalToConstant: 17)
        ])
   mainView.addSubview(singinButton)
    NSLayoutConstraint.activate([
        singinButton.topAnchor.constraint(equalTo: forgetBuuton.bottomAnchor, constant: 30),
        singinButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 40),
        singinButton.heightAnchor.constraint(equalToConstant: 35),
        singinButton.widthAnchor.constraint(equalToConstant: 160)
        ])
    
    mainView.addSubview(haveacount)
    NSLayoutConstraint.activate([
        //            haveacount.leadingAnchor.constraint(equalTo: accountView.leadingAnchor, constant: 10),
        //            haveacount.topAnchor.constraint(equalTo: accountView.topAnchor, constant: 3),
        haveacount.heightAnchor.constraint(equalToConstant: 14),
        //            haveacount.widthAnchor.constraint(equalToConstant: 100)
        ])
    
    mainView.addSubview(acountButt)
    NSLayoutConstraint.activate([
        acountButt.heightAnchor.constraint(equalToConstant: 14),
        //            acountButt.widthAnchor.constraint(equalToConstant: 50)
        ])
    mainView.addSubview(stackViewAcount)
    NSLayoutConstraint.activate([
        stackViewAcount.topAnchor.constraint(equalTo: singinButton.bottomAnchor, constant: 0),
        stackViewAcount.centerXAnchor.constraint(equalTo: singinButton.centerXAnchor, constant: 0),
        stackViewAcount.widthAnchor.constraint(equalToConstant: 160),
        stackViewAcount.heightAnchor.constraint(equalToConstant: 50),
//        stackViewAcount.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20)
        ])

}

required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

}
