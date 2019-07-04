//
//  DAboutView.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DAboutView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
//    var logoImage : UIImageView = {
//        let image = UIImageView()
//        image.image = UIImage(named: "shopping-bag (3)")
//        image.contentMode = .scaleToFill
//        image.clipsToBounds = true
//
//        image.translatesAutoresizingMaskIntoConstraints = false
//        return image
//    }()
//    var teamLabel : UILabel = {
//        let label = UILabel()
//        label.text = "TEAM SPIRIT"
//        label.textColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
//        label.font = UIFont.CairoBold(of: 16)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    
    var callLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our number"
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var numLabl1e : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var numLabl1e2 : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var addresLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our addres"
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var addres : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var mailLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our mail"
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var mail : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var websiteLable : UILabel = {
        let lable = UILabel()
        lable.text = "conntact us on social media"
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var faceBook : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.clipsToBounds = true
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "facebook"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var snabshat : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "snapchat"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var web : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "web"), for: .normal)
        
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    var instgram : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 2
        //        butt.backgroundColor = .white
        butt.setImage(UIImage(named: "twitter (2)"), for: .normal)
        //        butt.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [web, faceBook, instgram,snabshat])
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupview()
    }
    
    func setupview (){
        addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
//        mainview.addSubview(logoImage)
//        NSLayoutConstraint.activate([
//            logoImage.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 50),
//            logoImage.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
//            logoImage.heightAnchor.constraint(equalToConstant: 100),
//            logoImage.widthAnchor.constraint(equalToConstant: 100)
//            ])
//        mainview.addSubview(teamLabel)
//        NSLayoutConstraint.activate([
//            teamLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 10),
//            teamLabel.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
//            teamLabel.widthAnchor.constraint(equalToConstant: 120)
//            ])
        mainview.addSubview(callLable)
        NSLayoutConstraint.activate([
            callLable.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 80),
            callLable.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 40),
            callLable.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(numLabl1e)
        NSLayoutConstraint.activate([
            numLabl1e.topAnchor.constraint(equalTo: callLable.bottomAnchor, constant: 5),
            numLabl1e.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            numLabl1e.heightAnchor.constraint(equalToConstant: 14),
            
            ])
        mainview.addSubview(numLabl1e2)
        NSLayoutConstraint.activate([
            numLabl1e2.topAnchor.constraint(equalTo: numLabl1e.topAnchor, constant: 0),
            numLabl1e2.leadingAnchor.constraint(equalTo: numLabl1e.trailingAnchor, constant: 5),
            numLabl1e2.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(addresLable)
        NSLayoutConstraint.activate([
            addresLable.topAnchor.constraint(equalTo: numLabl1e.bottomAnchor, constant: 22),
            addresLable.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            addresLable.heightAnchor.constraint(equalToConstant: 14),
            
            ])
        mainview.addSubview(addres)
        NSLayoutConstraint.activate([
            addres.topAnchor.constraint(equalTo: addresLable.bottomAnchor, constant: 5),
            addres.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            addres.heightAnchor.constraint(equalToConstant: 13)
            ])
        mainview.addSubview(mailLable)
        NSLayoutConstraint.activate([
            mailLable.topAnchor.constraint(equalTo: addres.bottomAnchor, constant: 22),
            mailLable.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            mailLable.heightAnchor.constraint(equalToConstant: 14),
            
            ])
        mainview.addSubview(mail)
        NSLayoutConstraint.activate([
            mail.topAnchor.constraint(equalTo: mailLable.bottomAnchor, constant: 5),
            mail.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            mail.heightAnchor.constraint(equalToConstant: 13)
            ])
        mainview.addSubview(websiteLable)
        NSLayoutConstraint.activate([
            websiteLable.topAnchor.constraint(equalTo: mail.bottomAnchor, constant: 30),
            websiteLable.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0),
            websiteLable.heightAnchor.constraint(equalToConstant: 14)
            ])
        mainview.addSubview(snabshat)
        NSLayoutConstraint.activate([
            snabshat.heightAnchor.constraint(equalToConstant: 25),
            snabshat.widthAnchor.constraint(equalToConstant: 25),
            ])
        mainview.addSubview(faceBook)
        NSLayoutConstraint.activate([
            faceBook.heightAnchor.constraint(equalToConstant: 25),
            faceBook.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainview.addSubview(instgram)
        NSLayoutConstraint.activate([
            instgram.heightAnchor.constraint(equalToConstant: 25),
            instgram.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainview.addSubview(web)
        NSLayoutConstraint.activate([
            web.heightAnchor.constraint(equalToConstant: 25),
            web.widthAnchor.constraint(equalToConstant: 25)
            ])
        mainview.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            stackView.heightAnchor.constraint(equalToConstant: 40),
            stackView.topAnchor.constraint(equalTo: websiteLable.bottomAnchor, constant: 25),
            stackView.widthAnchor.constraint(equalToConstant: 130)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
