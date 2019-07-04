//
//  EditProfileView.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class EditProfileView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.alwaysBounceVertical = true
        scroll.contentSize.height = 1250
        scroll.backgroundColor = .clear
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    var personalImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.layer.cornerRadius = 40
        image.layer.masksToBounds = true
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var namelabel : UILabel = {
        let label = UILabel()
        label.text = "user name"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var name : UITextField = {
        let label = UITextField()
        label.placeholder = "mohamed maghoud"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line1 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // phone
    var phonelabel : UILabel = {
        let label = UILabel()
        label.text = "user phone"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var phone : UITextField = {
        let label = UITextField()
        label.placeholder = "1236374859"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // mail
    var maillabel : UILabel = {
        let label = UILabel()
        label.text = "user mail"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var mail : UITextField = {
        let label = UITextField()
        label.placeholder = "mohamed@maghoud.com"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // Area
    var Arealabel : UILabel = {
        let label = UILabel()
        label.text = "Area"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Area : UITextField = {
        let label = UITextField()
        label.placeholder = "mansoura gehan"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line4 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // kind car
    var carlabel : UILabel = {
        let label = UILabel()
        label.text = "car"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var car : UITextField = {
        let label = UITextField()
        label.placeholder = " Car Kind"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line5 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // number car
    var carNumberlabel : UILabel = {
        let label = UILabel()
        label.text = "Car Number"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var carNumber : UITextField = {
        let label = UITextField()
        label.placeholder = "23445-334-4"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line6 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // Model car
    var carModellabel : UILabel = {
        let label = UILabel()
        label.text = "Car Model"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var carModel : UITextField = {
        let label = UITextField()
        label.placeholder = "2018"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line7 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // license number
    var licensNulabel : UILabel = {
        let label = UILabel()
        label.text = "licence number"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var license : UITextField = {
        let label = UITextField()
        label.placeholder = "201w76"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line8 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // Identy number
    var Identylabel : UILabel = {
        let label = UILabel()
        label.text = "Identy number"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Identy : UITextField = {
        let label = UITextField()
        label.placeholder = "201w76333333"
        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line9 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // Identy photo
    var IdentyImglabel : UILabel = {
        let label = UILabel()
        label.text = "Identy image"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Identyimg : UIImageView = {
        let label = UIImageView()
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.layer.applySketchShadow()
        label.layer.borderWidth = 0.5
        label.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line10 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // licence photo
    var LicencImglabel : UILabel = {
        let label = UILabel()
        label.text = "license image"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var licenseimg : UIImageView = {
        let label = UIImageView()
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.layer.applySketchShadow()
        label.layer.borderWidth = 0.5
        label.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line11 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // licence photo
    var applicationlabel : UILabel = {
        let label = UILabel()
        label.text = "photo of application"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var applicationimg : UIImageView = {
        let label = UIImageView()
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.layer.applySketchShadow()
        label.layer.borderWidth = 0.5
        label.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line12 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    // licence photo
    var carPhotolabel : UILabel = {
        let label = UILabel()
        label.text = "car photo"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var carphoto : UIImageView = {
        let label = UIImageView()
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.layer.applySketchShadow()
        label.layer.borderWidth = 0.5
        label.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line13 : UIView = {
        let line = UIView()
        line.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var saveButton : UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
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
        mainView.addSubview(scrollView)
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        
        scrollView.addSubview(personalImage)
        NSLayoutConstraint.activate([
            personalImage.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 40),
            personalImage.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            personalImage.heightAnchor.constraint(equalToConstant: 80),
            personalImage.widthAnchor.constraint(equalToConstant: 80)
            ])
        scrollView.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.topAnchor.constraint(equalTo: personalImage.bottomAnchor, constant: 30),
            namelabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(name)
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 5),
            name.leadingAnchor.constraint(equalTo: namelabel.leadingAnchor, constant: 0),
            name.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.topAnchor.constraint(equalTo: name.bottomAnchor, constant: 2),
            line1.heightAnchor.constraint(equalToConstant: 1),
            line1.leadingAnchor.constraint(equalTo: name.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: name.trailingAnchor, constant: 0)
            ])
        // phone
        scrollView.addSubview(phonelabel)
        NSLayoutConstraint.activate([
            phonelabel.topAnchor.constraint(equalTo: line1.bottomAnchor, constant: 15),
            phonelabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(phone)
        NSLayoutConstraint.activate([
            phone.topAnchor.constraint(equalTo: phonelabel.bottomAnchor, constant: 5),
            phone.leadingAnchor.constraint(equalTo: phonelabel.leadingAnchor, constant: 0),
            phone.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: phone.bottomAnchor, constant: 2),
            line2.heightAnchor.constraint(equalToConstant: 1),
            line2.leadingAnchor.constraint(equalTo: phone.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: phone.trailingAnchor, constant: 0)
            ])
        // mail
        scrollView.addSubview(maillabel)
        NSLayoutConstraint.activate([
            maillabel.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 15),
            maillabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(mail)
        NSLayoutConstraint.activate([
            mail.topAnchor.constraint(equalTo: maillabel.bottomAnchor, constant: 5),
            mail.leadingAnchor.constraint(equalTo: maillabel.leadingAnchor, constant: 0),
            mail.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: mail.bottomAnchor, constant: 2),
            line3.heightAnchor.constraint(equalToConstant: 1),
            line3.leadingAnchor.constraint(equalTo: mail.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: mail.trailingAnchor, constant: 0)
            ])
        // area
        scrollView.addSubview(Arealabel)
        NSLayoutConstraint.activate([
            Arealabel.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 15),
            Arealabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(Area)
        NSLayoutConstraint.activate([
            Area.topAnchor.constraint(equalTo: Arealabel.bottomAnchor, constant: 5),
            Area.leadingAnchor.constraint(equalTo: Arealabel.leadingAnchor, constant: 0),
            Area.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: Area.bottomAnchor, constant: 2),
            line4.heightAnchor.constraint(equalToConstant: 1),
            line4.leadingAnchor.constraint(equalTo: Area.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: Area.trailingAnchor, constant: 0)
            ])
        // area
        scrollView.addSubview(carlabel)
        NSLayoutConstraint.activate([
            carlabel.topAnchor.constraint(equalTo: line4.bottomAnchor, constant: 15),
            carlabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(car)
        NSLayoutConstraint.activate([
            car.topAnchor.constraint(equalTo: carlabel.bottomAnchor, constant: 5),
            car.leadingAnchor.constraint(equalTo: carlabel.leadingAnchor, constant: 0),
            car.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.topAnchor.constraint(equalTo: car.bottomAnchor, constant: 2),
            line5.heightAnchor.constraint(equalToConstant: 1),
            line5.leadingAnchor.constraint(equalTo: car.leadingAnchor, constant: 0),
            line5.trailingAnchor.constraint(equalTo: car.trailingAnchor, constant: 0)
            ])
        // car number
        scrollView.addSubview(carNumberlabel)
        NSLayoutConstraint.activate([
            carNumberlabel.topAnchor.constraint(equalTo: line5.bottomAnchor, constant: 15),
            carNumberlabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(carNumber)
        NSLayoutConstraint.activate([
            carNumber.topAnchor.constraint(equalTo: carNumberlabel.bottomAnchor, constant: 5),
            carNumber.leadingAnchor.constraint(equalTo: carNumberlabel.leadingAnchor, constant: 0),
            carNumber.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line6)
        NSLayoutConstraint.activate([
            line6.topAnchor.constraint(equalTo: carNumber.bottomAnchor, constant: 2),
            line6.heightAnchor.constraint(equalToConstant: 1),
            line6.leadingAnchor.constraint(equalTo: carNumber.leadingAnchor, constant: 0),
            line6.trailingAnchor.constraint(equalTo: carNumber.trailingAnchor, constant: 0)
            ])
        // car Model
        scrollView.addSubview(carModellabel)
        NSLayoutConstraint.activate([
            carModellabel.topAnchor.constraint(equalTo: line6.bottomAnchor, constant: 15),
            carModellabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(carModel)
        NSLayoutConstraint.activate([
            carModel.topAnchor.constraint(equalTo: carModellabel.bottomAnchor, constant: 5),
            carModel.leadingAnchor.constraint(equalTo: carModellabel.leadingAnchor, constant: 0),
            carModel.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line7)
        NSLayoutConstraint.activate([
            line7.topAnchor.constraint(equalTo: carModel.bottomAnchor, constant: 2),
            line7.heightAnchor.constraint(equalToConstant: 1),
            line7.leadingAnchor.constraint(equalTo: carModel.leadingAnchor, constant: 0),
            line7.trailingAnchor.constraint(equalTo: carModel.trailingAnchor, constant: 0)
            ])
        // licence number
        scrollView.addSubview(licensNulabel)
        NSLayoutConstraint.activate([
            licensNulabel.topAnchor.constraint(equalTo: line7.bottomAnchor, constant: 15),
            licensNulabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(license)
        NSLayoutConstraint.activate([
            license.topAnchor.constraint(equalTo: licensNulabel.bottomAnchor, constant: 5),
            license.leadingAnchor.constraint(equalTo: licensNulabel.leadingAnchor, constant: 0),
            license.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line8)
        NSLayoutConstraint.activate([
            line8.topAnchor.constraint(equalTo: license.bottomAnchor, constant: 2),
            line8.heightAnchor.constraint(equalToConstant: 1),
            line8.leadingAnchor.constraint(equalTo: license.leadingAnchor, constant: 0),
            line8.trailingAnchor.constraint(equalTo: license.trailingAnchor, constant: 0)
            ])
        // identy number
        scrollView.addSubview(Identylabel)
        NSLayoutConstraint.activate([
            Identylabel.topAnchor.constraint(equalTo: line8.bottomAnchor, constant: 15),
            Identylabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(Identy)
        NSLayoutConstraint.activate([
            Identy.topAnchor.constraint(equalTo: Identylabel.bottomAnchor, constant: 5),
            Identy.leadingAnchor.constraint(equalTo: Identylabel.leadingAnchor, constant: 0),
            Identy.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            ])
        scrollView.addSubview(line9)
        NSLayoutConstraint.activate([
            line9.topAnchor.constraint(equalTo: Identy.bottomAnchor, constant: 2),
            line9.heightAnchor.constraint(equalToConstant: 1),
            line9.leadingAnchor.constraint(equalTo: Identy.leadingAnchor, constant: 0),
            line9.trailingAnchor.constraint(equalTo: Identy.trailingAnchor, constant: 0)
            ])
        // identy img
        scrollView.addSubview(IdentyImglabel)
        NSLayoutConstraint.activate([
            IdentyImglabel.topAnchor.constraint(equalTo: line9.bottomAnchor, constant: 15),
            IdentyImglabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(Identyimg)
        NSLayoutConstraint.activate([
            Identyimg.topAnchor.constraint(equalTo: IdentyImglabel.bottomAnchor, constant: 5),
            Identyimg.leadingAnchor.constraint(equalTo: IdentyImglabel.leadingAnchor, constant: 0),
            //            Identy.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            Identyimg.widthAnchor.constraint(equalToConstant: 70),
            Identyimg.heightAnchor.constraint(equalToConstant: 70)
            ])
        scrollView.addSubview(line10)
        NSLayoutConstraint.activate([
            line10.topAnchor.constraint(equalTo: Identyimg.bottomAnchor, constant: 10),
            line10.heightAnchor.constraint(equalToConstant: 1),
            line10.leadingAnchor.constraint(equalTo: Identy.leadingAnchor, constant: 0),
            line10.trailingAnchor.constraint(equalTo: Identy.trailingAnchor, constant: 0)
            ])
        // identy img
        scrollView.addSubview(LicencImglabel)
        NSLayoutConstraint.activate([
            LicencImglabel.topAnchor.constraint(equalTo: line10.bottomAnchor, constant: 15),
            LicencImglabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(licenseimg)
        NSLayoutConstraint.activate([
            licenseimg.topAnchor.constraint(equalTo: LicencImglabel.bottomAnchor, constant: 5),
            licenseimg.leadingAnchor.constraint(equalTo: LicencImglabel.leadingAnchor, constant: 0),
            //            Identy.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            licenseimg.widthAnchor.constraint(equalToConstant: 70),
            licenseimg.heightAnchor.constraint(equalToConstant: 70)
            ])
        scrollView.addSubview(line11)
        NSLayoutConstraint.activate([
            line11.topAnchor.constraint(equalTo: licenseimg.bottomAnchor, constant: 10),
            line11.heightAnchor.constraint(equalToConstant: 1),
            line11.leadingAnchor.constraint(equalTo: Identy.leadingAnchor, constant: 0),
            line11.trailingAnchor.constraint(equalTo: Identy.trailingAnchor, constant: 0)
            ])
        // identy img
        scrollView.addSubview(applicationlabel)
        NSLayoutConstraint.activate([
            applicationlabel.topAnchor.constraint(equalTo: line11.bottomAnchor, constant: 15),
            applicationlabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(applicationimg)
        NSLayoutConstraint.activate([
            applicationimg.topAnchor.constraint(equalTo: applicationlabel.bottomAnchor, constant: 5),
            applicationimg.leadingAnchor.constraint(equalTo: applicationlabel.leadingAnchor, constant: 0),
            //            Identy.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            applicationimg.widthAnchor.constraint(equalToConstant: 70),
            applicationimg.heightAnchor.constraint(equalToConstant: 70)
            ])
        scrollView.addSubview(line12)
        NSLayoutConstraint.activate([
            line12.topAnchor.constraint(equalTo: applicationimg.bottomAnchor, constant: 10),
            line12.heightAnchor.constraint(equalToConstant: 1),
            line12.leadingAnchor.constraint(equalTo: Identy.leadingAnchor, constant: 0),
            line12.trailingAnchor.constraint(equalTo: Identy.trailingAnchor, constant: 0)
            ])
        // car img
        scrollView.addSubview(carPhotolabel)
        NSLayoutConstraint.activate([
            carPhotolabel.topAnchor.constraint(equalTo: line12.bottomAnchor, constant: 15),
            carPhotolabel.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 40)
            ])
        scrollView.addSubview(carphoto)
        NSLayoutConstraint.activate([
            carphoto.topAnchor.constraint(equalTo: carPhotolabel.bottomAnchor, constant: 5),
            carphoto.leadingAnchor.constraint(equalTo: applicationlabel.leadingAnchor, constant: 0),
            //            Identy.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30)
            carphoto.widthAnchor.constraint(equalToConstant: 70),
            carphoto.heightAnchor.constraint(equalToConstant: 70)
            ])
        scrollView.addSubview(line13)
        NSLayoutConstraint.activate([
            line13.topAnchor.constraint(equalTo: carphoto.bottomAnchor, constant: 10),
            line13.heightAnchor.constraint(equalToConstant: 1),
            line13.leadingAnchor.constraint(equalTo: Identy.leadingAnchor, constant: 0),
            line13.trailingAnchor.constraint(equalTo: Identy.trailingAnchor, constant: 0)
            ])
        scrollView.addSubview(saveButton)
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: line13.bottomAnchor, constant: 30),
            saveButton.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor, constant: 0),
            saveButton.heightAnchor.constraint(equalToConstant: 40),
            saveButton.widthAnchor.constraint(equalToConstant: 100)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
