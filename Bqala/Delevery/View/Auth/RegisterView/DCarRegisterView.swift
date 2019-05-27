//
//  DCarRegisterView.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DCarRegisterView: UIView {


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

    // kind of car
    var KindCarView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var kindcarImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var kindcar : UITextField = {
        let text = UITextField()
        text.placeholder = "kind of car"
        //        text.keyboardType = .asciiCapableNumberPad
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
    var carNumberView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var carNumberImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "smartphone-call")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var carnumber : UITextField = {
        let text = UITextField()
        text.placeholder = "car number"
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
    
    //   email
    var carModelView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var carModelImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "envelope (1)")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var carModel : UITextField = {
        let text = UITextField()
        text.placeholder = "carModel"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
        text.isSecureTextEntry = true
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
    
    //   password
    var licensnumberView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var passwordImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "key")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var licensnumber : UITextField = {
        let text = UITextField()
        text.placeholder = "licens number"
        text.keyboardType = .asciiCapableNumberPad
        text.keyboardType = .asciiCapable
//        text.isSecureTextEntry = true
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
    
    //   repassword
    var IdentitynumberView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var repasswordImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "key")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var Identity : UITextField = {
        let text = UITextField()
        text.placeholder = "identity number"
        text.keyboardType = .asciiCapableNumberPad
        text.keyboardType = .asciiCapable
        text.isSecureTextEntry = true
        text.isSecureTextEntry = true
        //        text.backgroundColor = .green
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line5 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
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

        // user view
        mainView.addSubview(KindCarView)
        NSLayoutConstraint.activate([
            KindCarView.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 250),
            KindCarView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            KindCarView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            KindCarView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mainView.addSubview(kindcarImage)
//        NSLayoutConstraint.activate([
//            kindcarImage.trailingAnchor.constraint(equalTo: KindCarView.trailingAnchor, constant: 5),
//            kindcarImage.topAnchor.constraint(equalTo: KindCarView.topAnchor, constant: 10),
//            kindcarImage.heightAnchor.constraint(equalToConstant: 20),
//            kindcarImage.widthAnchor.constraint(equalToConstant: 20)
//            ])
        mainView.addSubview(kindcar)
        NSLayoutConstraint.activate([
            kindcar.topAnchor.constraint(equalTo: KindCarView.topAnchor, constant: 15),
            kindcar.leadingAnchor.constraint(equalTo: KindCarView.leadingAnchor, constant: 0),
            kindcar.trailingAnchor.constraint(equalTo: KindCarView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: KindCarView.bottomAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: KindCarView.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: KindCarView.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // phone numbr
        mainView.addSubview(carNumberView)
        NSLayoutConstraint.activate([
            carNumberView.topAnchor.constraint(equalTo: KindCarView.bottomAnchor, constant: 10),
            carNumberView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            carNumberView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            carNumberView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mainView.addSubview(carNumberImage)
//        NSLayoutConstraint.activate([
//            carNumberImage.trailingAnchor.constraint(equalTo: carNumberView.trailingAnchor, constant: 5),
//            carNumberImage.topAnchor.constraint(equalTo: carNumberView.topAnchor, constant: 10),
//            carNumberImage.heightAnchor.constraint(equalToConstant: 20),
//            carNumberImage.widthAnchor.constraint(equalToConstant: 20)
//            ])
        mainView.addSubview(carnumber)
        NSLayoutConstraint.activate([
            carnumber.topAnchor.constraint(equalTo: carNumberView.topAnchor, constant: 15),
            carnumber.leadingAnchor.constraint(equalTo: carNumberView.leadingAnchor, constant: 0),
            carnumber.trailingAnchor.constraint(equalTo: carNumberView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: carNumberView.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: carNumberView.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: KindCarView.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        // email
        mainView.addSubview(carModelView)
        NSLayoutConstraint.activate([
            carModelView.topAnchor.constraint(equalTo: carNumberView.bottomAnchor, constant: 10),
            carModelView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            carModelView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            carModelView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mainView.addSubview(carModelImage)
//        NSLayoutConstraint.activate([
//            carModelImage.trailingAnchor.constraint(equalTo: carModelView.trailingAnchor, constant: 5),
//            carModelImage.topAnchor.constraint(equalTo: carModelView.topAnchor, constant: 10),
//            carModelImage.heightAnchor.constraint(equalToConstant: 20),
//            carModelImage.widthAnchor.constraint(equalToConstant: 20)
//            ])
        mainView.addSubview(carModel)
        NSLayoutConstraint.activate([
            carModel.topAnchor.constraint(equalTo: carModelView.topAnchor, constant: 15),
            carModel.leadingAnchor.constraint(equalTo: carModelView.leadingAnchor, constant: 0),
            carModel.trailingAnchor.constraint(equalTo: carModelView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: carModelView.bottomAnchor, constant: 0),
            line3.leadingAnchor.constraint(equalTo: carModelView.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: carModelView.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1)
            ])
        // password
        mainView.addSubview(licensnumberView)
        NSLayoutConstraint.activate([
            licensnumberView.topAnchor.constraint(equalTo: carModelView.bottomAnchor, constant: 10),
            licensnumberView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            licensnumberView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            licensnumberView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mainView.addSubview(passwordImage)
//        NSLayoutConstraint.activate([
//            passwordImage.trailingAnchor.constraint(equalTo: licensnumberView.trailingAnchor, constant: 5),
//            passwordImage.topAnchor.constraint(equalTo: licensnumberView.topAnchor, constant: 10),
//            passwordImage.heightAnchor.constraint(equalToConstant: 15),
//            passwordImage.widthAnchor.constraint(equalToConstant: 15)
//            ])
        mainView.addSubview(licensnumber)
        NSLayoutConstraint.activate([
            licensnumber.topAnchor.constraint(equalTo: licensnumberView.topAnchor, constant: 15),
        licensnumber.leadingAnchor.constraint(equalTo: licensnumberView.leadingAnchor, constant: 0),
        licensnumber.trailingAnchor.constraint(equalTo: licensnumberView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: licensnumberView.bottomAnchor, constant: 0),
            line4.leadingAnchor.constraint(equalTo: licensnumberView.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: licensnumberView.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1)
            ])
        // repassword
        mainView.addSubview(IdentitynumberView)
        NSLayoutConstraint.activate([
            IdentitynumberView.topAnchor.constraint(equalTo: licensnumberView.bottomAnchor, constant: 10),
            IdentitynumberView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            IdentitynumberView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            IdentitynumberView.heightAnchor.constraint(equalToConstant: 40)
            ])
//        mainView.addSubview(repasswordImage)
//        NSLayoutConstraint.activate([
//            repasswordImage.trailingAnchor.constraint(equalTo: IdentitynumberView.trailingAnchor, constant: 5),
//            repasswordImage.topAnchor.constraint(equalTo: IdentitynumberView.topAnchor, constant: 10),
//            repasswordImage.heightAnchor.constraint(equalToConstant: 15),
//            repasswordImage.widthAnchor.constraint(equalToConstant: 15)
//            ])
        mainView.addSubview(Identity)
        NSLayoutConstraint.activate([
            Identity.topAnchor.constraint(equalTo: IdentitynumberView.topAnchor, constant: 15),
            Identity.leadingAnchor.constraint(equalTo: IdentitynumberView.leadingAnchor, constant: 0),
            Identity.trailingAnchor.constraint(equalTo: IdentitynumberView.trailingAnchor, constant: 0)
            ])
        mainView.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.topAnchor.constraint(equalTo: IdentitynumberView.bottomAnchor, constant: 0),
            line5.leadingAnchor.constraint(equalTo: IdentitynumberView.leadingAnchor, constant: 0),
            line5.trailingAnchor.constraint(equalTo: IdentitynumberView.trailingAnchor, constant: 0),
            line5.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainView.addSubview(NextButton)
        NSLayoutConstraint.activate([
            NextButton.topAnchor.constraint(equalTo: IdentitynumberView.bottomAnchor, constant: 40),
            NextButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 60),
            NextButton.heightAnchor.constraint(equalToConstant: 35),
            NextButton.widthAnchor.constraint(equalToConstant: 160)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
