//
//  DRegisterPhotosView.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DRegisterPhotosView: UIView {

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
    
    // user name
    var userView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var userImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var user : UITextField = {
        let text = UITextField()
        text.text = "photo of identity"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
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
    
    // user name
    var LincesView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var lincesImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var linces : UITextField = {
        let text = UITextField()
        text.text = "photo of lincs"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
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
    
    // user name
    var reportView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var reportImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var report : UITextField = {
        let text = UITextField()
        text.text = "photo of identity"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
        //        text.backgroundColor = .green
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line3 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    // user name
    var carView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var carImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var car : UITextField = {
        let text = UITextField()
        text.text = "photo of identity"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
        //        text.isSecureTextEntry = true
        //        text.backgroundColor = .green
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line4 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var notcheckButton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "checkd"), for: .normal)
        //        butt.backgroundColor = .
        //        butt.isHidden = true
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var checkButton : UIButton = {
        let butt = UIButton()
        butt.setImage(UIImage(named: "checked"), for: .normal)
        //        butt.backgroundColor = .red
        butt.isHidden = true
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var agreeLable : UILabel = {
        let lable = UILabel()
        lable.font = UIFont.systemFont(ofSize: 14)
        lable.text = "agree about".localize
        lable.sizeToFit()
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var conditionButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("police and condition".localize, for: .normal)
        butt.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        butt.setTitleColor( #colorLiteral(red: 0.4784313725, green: 0.7137254902, blue: 0.8705882353, alpha: 1), for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var NextButton : UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
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
        
        // user view
        mainView.addSubview(userView)
        NSLayoutConstraint.activate([
            userView.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 240),
            userView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
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
        mainView.addSubview(user)
        NSLayoutConstraint.activate([
            user.topAnchor.constraint(equalTo: userView.topAnchor, constant: 15),
            user.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            user.trailingAnchor.constraint(equalTo: userImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: userView.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // linces view
        mainView.addSubview(LincesView)
        NSLayoutConstraint.activate([
            LincesView.topAnchor.constraint(equalTo: userView.bottomAnchor, constant: 20),
            LincesView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            LincesView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            LincesView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(lincesImage)
        NSLayoutConstraint.activate([
            lincesImage.trailingAnchor.constraint(equalTo: LincesView.trailingAnchor, constant: 5),
            lincesImage.topAnchor.constraint(equalTo: LincesView.topAnchor, constant: 10),
            lincesImage.heightAnchor.constraint(equalToConstant: 20),
            lincesImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(linces)
        NSLayoutConstraint.activate([
            linces.topAnchor.constraint(equalTo: LincesView.topAnchor, constant: 15),
            linces.leadingAnchor.constraint(equalTo: LincesView.leadingAnchor, constant: 0),
            linces.trailingAnchor.constraint(equalTo: lincesImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: LincesView.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: LincesView.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: LincesView.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // linces view
        mainView.addSubview(reportView)
        NSLayoutConstraint.activate([
            reportView.topAnchor.constraint(equalTo: LincesView.bottomAnchor, constant: 20),
            reportView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            reportView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            reportView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(reportImage)
        NSLayoutConstraint.activate([
            reportImage.trailingAnchor.constraint(equalTo: reportView.trailingAnchor, constant: 5),
            reportImage.topAnchor.constraint(equalTo: reportView.topAnchor, constant: 10),
            reportImage.heightAnchor.constraint(equalToConstant: 20),
            reportImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(report)
        NSLayoutConstraint.activate([
            report.topAnchor.constraint(equalTo: reportView.topAnchor, constant: 15),
            report.leadingAnchor.constraint(equalTo: reportView.leadingAnchor, constant: 0),
            report.trailingAnchor.constraint(equalTo: reportImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: reportView.bottomAnchor, constant: 0),
            line3.leadingAnchor.constraint(equalTo: reportView.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: reportView.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1)
            ])
        // car view
        mainView.addSubview(carView)
        NSLayoutConstraint.activate([
            carView.topAnchor.constraint(equalTo: reportView.bottomAnchor, constant: 20),
            carView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            carView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            carView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(carImage)
        NSLayoutConstraint.activate([
            carImage.trailingAnchor.constraint(equalTo: carView.trailingAnchor, constant: 5),
            carImage.topAnchor.constraint(equalTo: carView.topAnchor, constant: 10),
            carImage.heightAnchor.constraint(equalToConstant: 20),
            carImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(car)
        NSLayoutConstraint.activate([
            car.topAnchor.constraint(equalTo: carView.topAnchor, constant: 15),
            car.leadingAnchor.constraint(equalTo: carView.leadingAnchor, constant: 0),
            car.trailingAnchor.constraint(equalTo: carImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: carView.bottomAnchor, constant: 0),
            line4.leadingAnchor.constraint(equalTo: carView.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: carView.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        mainView.addSubview(checkButton)
        NSLayoutConstraint.activate([
            checkButton.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            checkButton.topAnchor.constraint(equalTo: carView.bottomAnchor, constant: 25),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
            ])
        mainView.addSubview(notcheckButton)
        NSLayoutConstraint.activate([
            notcheckButton.leadingAnchor.constraint(equalTo: userView.leadingAnchor, constant: 0),
            notcheckButton.topAnchor.constraint(equalTo: carView.bottomAnchor, constant: 25),
            notcheckButton.heightAnchor.constraint(equalToConstant: 16),
            notcheckButton.widthAnchor.constraint(equalToConstant: 16)
            ])
        mainView.addSubview(agreeLable)
        NSLayoutConstraint.activate([
            agreeLable.topAnchor.constraint(equalTo: carView.bottomAnchor, constant: 25),
            agreeLable.leadingAnchor.constraint(equalTo: checkButton.trailingAnchor, constant: 5),
            agreeLable.heightAnchor.constraint(equalToConstant: 15),
            
            ])
        mainView.addSubview(conditionButt)
        NSLayoutConstraint.activate([
            conditionButt.topAnchor.constraint(equalTo: carView.bottomAnchor, constant: 25),
            conditionButt.leadingAnchor.constraint(equalTo: agreeLable.trailingAnchor, constant: 5),
            conditionButt.heightAnchor.constraint(equalToConstant: 15)
            
            ])
        mainView.addSubview(NextButton)
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: conditionButt.bottomAnchor, constant: 30),
            NextButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 60),
            NextButton.heightAnchor.constraint(equalToConstant: 35),
            NextButton.widthAnchor.constraint(equalToConstant: 160)
            ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
