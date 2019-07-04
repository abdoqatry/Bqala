//
//  DCallUsView.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DCallUsView: UIView {

  
    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var callLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our number".localize
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var numLabl1e : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 13)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var numLabl1e2 : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 13)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var addresLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our addres".localize
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.numberOfLines = 0
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var addres : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 13)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var mailLable : UILabel = {
        let lable = UILabel()
        lable.text = "Our mail".localize
        lable.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 14)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var mail : UILabel = {
        let lable = UILabel()
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lable.font = UIFont.systemFont(ofSize: 13)
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var websiteLable : UILabel = {
        let lable = UILabel()
        lable.text = "conntact us on social media".localize
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
        butt.setImage(UIImage(named: "facebook (2)"), for: .normal)
        
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
    var mailtext : UITextField = {
        let text = UITextField()
        text.placeholder = "your mail or phone number".localize
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line : UIView = {
        let line = UIView()
        
        line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var nametext : UITextField = {
        let text = UITextField()
        text.placeholder = "your name".localize
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line2 : UIView = {
        let line = UIView()
        
        line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var massagetext : UITextField = {
        let text = UITextField()
        text.placeholder = "title massage".localize
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line3 : UIView = {
        let line = UIView()
        
        line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var detailstext : UITextField = {
        let text = UITextField()
        text.placeholder = " massage details".localize
        text.textAlignment = .center
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var line4 : UIView = {
        let line = UIView()
        
        line.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var send : UIButton = {
        let butt = UIButton()
        butt.layer.cornerRadius = 18
        butt.backgroundColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        butt.setTitle("send".localize, for: .normal)
        butt.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        butt.layer.applySketchShadow()
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setview()
    }
    
    
    
    func setview(){
        addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        mainview.addSubview(callLable)
        NSLayoutConstraint.activate([
            callLable.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 35),
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
            addresLable.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: -10)
            //            addresLable.heightAnchor.constraint(equalToConstant: 14),
            
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
        mainview.addSubview(mailtext)
        NSLayoutConstraint.activate([
            mailtext.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            mailtext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            mailtext.heightAnchor.constraint(equalToConstant: 17),
            mailtext.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0)
            ])
        mainview.addSubview(line)
        NSLayoutConstraint.activate([
            line.topAnchor.constraint(equalTo: mailtext.bottomAnchor, constant: 10),
            line.leadingAnchor.constraint(equalTo: mailtext.leadingAnchor, constant: 0),
            line.trailingAnchor.constraint(equalTo: mailtext.trailingAnchor, constant: 0),
            line.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(nametext)
        NSLayoutConstraint.activate([
            nametext.topAnchor.constraint(equalTo: line.bottomAnchor, constant: 20),
            nametext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            nametext.heightAnchor.constraint(equalToConstant: 17),
            nametext.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0)
            ])
        mainview.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: nametext.bottomAnchor, constant: 10),
            line2.leadingAnchor.constraint(equalTo: mailtext.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: mailtext.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(massagetext)
        NSLayoutConstraint.activate([
            massagetext.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 20),
            massagetext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            massagetext.heightAnchor.constraint(equalToConstant: 17),
            massagetext.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0)
            ])
        mainview.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: massagetext.bottomAnchor, constant: 10),
            line3.leadingAnchor.constraint(equalTo: mailtext.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: mailtext.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(detailstext)
        NSLayoutConstraint.activate([
            detailstext.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 20),
            detailstext.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            detailstext.heightAnchor.constraint(equalToConstant: 17),
            detailstext.leadingAnchor.constraint(equalTo: callLable.leadingAnchor, constant: 0)
            ])
        mainview.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: detailstext.bottomAnchor, constant: 10),
            line4.leadingAnchor.constraint(equalTo: mailtext.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: mailtext.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(send)
        NSLayoutConstraint.activate([
            send.topAnchor.constraint(equalTo: line4.bottomAnchor, constant: 30),
            send.centerXAnchor.constraint(equalTo: mainview.centerXAnchor, constant: 0),
            send.heightAnchor.constraint(equalToConstant: 45),
            send.widthAnchor.constraint(equalToConstant: 250)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
