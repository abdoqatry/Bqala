//
//  DCityRegisterView.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DCityRegisterView: UIView {

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
    var searchLabel : UILabel = {
       let label = UILabel()
        label.text = "Search by city"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // city
    var CityView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var CityImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "placeholder")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var City : UITextField = {
        let text = UITextField()
        text.placeholder = "City"
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
    // Area
    var AreaView : UIView = {
        let view = UIView()
        
        //                view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var AreaImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "placeholder")
        image.contentMode = .scaleAspectFit
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var Area : UITextField = {
        let text = UITextField()
        text.placeholder = "City"
        //        text.keyboardType = .asciiCapableNumberPad
        //        text.keyboardType = .asciiCapable
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
        mainView.addSubview(checkButton)
        NSLayoutConstraint.activate([
            checkButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            checkButton.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 120),
            checkButton.heightAnchor.constraint(equalToConstant: 16),
            checkButton.widthAnchor.constraint(equalToConstant: 16)
            ])
        mainView.addSubview(notcheckButton)
        NSLayoutConstraint.activate([
            notcheckButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            notcheckButton.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 120),
            notcheckButton.heightAnchor.constraint(equalToConstant: 16),
            notcheckButton.widthAnchor.constraint(equalToConstant: 16)
            ])
        mainView.addSubview(searchLabel)
        NSLayoutConstraint.activate([
        searchLabel.topAnchor.constraint(equalTo: notcheckButton.topAnchor, constant: 0),
        searchLabel.leadingAnchor.constraint(equalTo: notcheckButton.trailingAnchor, constant: 10),
            ])
        
        
        mainView.addSubview(CityView)
        NSLayoutConstraint.activate([
            CityView.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 30),
            CityView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            CityView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            CityView.heightAnchor.constraint(equalToConstant: 40)
            ])
                mainView.addSubview(CityImage)
                NSLayoutConstraint.activate([
        CityImage.trailingAnchor.constraint(equalTo: CityView.trailingAnchor, constant: 5),
        CityImage.topAnchor.constraint(equalTo: CityView.topAnchor, constant: 10),
        CityImage.heightAnchor.constraint(equalToConstant: 20),
        CityImage.widthAnchor.constraint(equalToConstant: 20)
                    ])
        mainView.addSubview(City)
        NSLayoutConstraint.activate([
            City.topAnchor.constraint(equalTo: CityView.topAnchor, constant: 15),
            City.leadingAnchor.constraint(equalTo: CityView.leadingAnchor, constant: 0),
            City.trailingAnchor.constraint(equalTo: CityImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: CityView.bottomAnchor, constant: 0),
            line1.leadingAnchor.constraint(equalTo: CityView.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: CityView.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        
        mainView.addSubview(AreaView)
        NSLayoutConstraint.activate([
            AreaView.topAnchor.constraint(equalTo: CityView.bottomAnchor, constant: 20),
            AreaView.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50),
            AreaView.trailingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: -50),
            AreaView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(AreaImage)
        NSLayoutConstraint.activate([
            AreaImage.trailingAnchor.constraint(equalTo: AreaView.trailingAnchor, constant: 5),
            AreaImage.topAnchor.constraint(equalTo: AreaView.topAnchor, constant: 10),
            AreaImage.heightAnchor.constraint(equalToConstant: 20),
            AreaImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        mainView.addSubview(Area)
        NSLayoutConstraint.activate([
            Area.topAnchor.constraint(equalTo: AreaView.topAnchor, constant: 15),
            Area.leadingAnchor.constraint(equalTo: AreaView.leadingAnchor, constant: 0),
            Area.trailingAnchor.constraint(equalTo: AreaImage.leadingAnchor, constant: -5)
            ])
        mainView.addSubview(line2)
        NSLayoutConstraint.activate([
        line2.topAnchor.constraint(equalTo: AreaView.bottomAnchor, constant: 0),
        line2.leadingAnchor.constraint(equalTo: AreaView.leadingAnchor, constant: 0),
        line2.trailingAnchor.constraint(equalTo: AreaView.trailingAnchor, constant: 0),
        line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
