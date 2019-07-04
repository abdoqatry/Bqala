//
//  CurrnetOrderView.swift
//  Bqala
//
//  Created by Moe on 6/15/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class CurrnetOrderView: UIView {

   
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var WhiteView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var NavigationView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var dateLabel : UILabel = {
        let label = UILabel()
        label.text = "order date : "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var date : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var nameLabel : UILabel = {
        let label = UILabel()
        label.text = "order number "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var name : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var LocationLabel : UILabel = {
        let label = UILabel()
        label.text = "Location "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Location : UILabel = {
        let label = UILabel()
        label.text = " "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var chatButton : UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "chat"), for: .normal)
        button.backgroundColor = .green
        button.imageView?.clipsToBounds = true
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var Pagelimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "shopping-bag (3)")
        image.clipsToBounds = true
                image.layer.cornerRadius = 25
        image.layer.masksToBounds = true
        //        image.backgroundColor = .white
        image.contentMode = .scaleAspectFit
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var numberLabel : UILabel = {
        let label = UILabel()
        label.text = "clint name "
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var number : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var bottomView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var photobutton : UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7254901961, blue: 0.2862745098, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("finish", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var agrrebutton : UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7254901961, blue: 0.2862745098, alpha: 1)
        button.layer.cornerRadius = 15
        button.setTitle("order image", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
//    var cancelbutton : UIButton = {
//        let button = UIButton()
//        button.backgroundColor = .red
//        button.layer.cornerRadius = 15
//        button.setTitle("Reject", for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//        return button
//    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(CurrentOrderCell.self, forCellReuseIdentifier: "CurrentOrderCell")
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
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
        mainView.addSubview(WhiteView)
        NSLayoutConstraint.activate([
            WhiteView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            WhiteView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            WhiteView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            WhiteView.heightAnchor.constraint(equalToConstant: 5)
            ])
        mainView.addSubview(NavigationView)
        NSLayoutConstraint.activate([
            NavigationView.topAnchor.constraint(equalTo: WhiteView.bottomAnchor, constant: 0),
            NavigationView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            NavigationView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            NavigationView.heightAnchor.constraint(equalToConstant: 130)
            ])
        NavigationView.addSubview(chatButton)
        NSLayoutConstraint.activate([
            chatButton.topAnchor.constraint(equalTo: NavigationView.topAnchor, constant: 15),
            chatButton.trailingAnchor.constraint(equalTo: NavigationView.trailingAnchor, constant: -20),
            chatButton.heightAnchor.constraint(equalToConstant: 20),
            chatButton.widthAnchor.constraint(equalToConstant: 20)
            ])
        NavigationView.addSubview(Pagelimage)
        NSLayoutConstraint.activate([
            Pagelimage.topAnchor.constraint(equalTo: NavigationView.topAnchor, constant: 20),
            Pagelimage.trailingAnchor.constraint(equalTo: chatButton.leadingAnchor, constant: -20),
            Pagelimage.heightAnchor.constraint(equalToConstant: 50),
            Pagelimage.widthAnchor.constraint(equalToConstant: 50)
            ])
        NavigationView.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: NavigationView.topAnchor, constant: 5),
            dateLabel.leadingAnchor.constraint(equalTo: NavigationView.leadingAnchor, constant: 20),
            ])
        NavigationView.addSubview(date)
        NSLayoutConstraint.activate([
            date.topAnchor.constraint(equalTo: dateLabel.topAnchor, constant: 0),
            date.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 3),
            ])
        NavigationView.addSubview(nameLabel)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 7),
            nameLabel.leadingAnchor.constraint(equalTo: NavigationView.leadingAnchor, constant: 20),
            ])
        NavigationView.addSubview(name)
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: nameLabel.topAnchor, constant: 0),
            name.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 3),
            ])
        NavigationView.addSubview(LocationLabel)
        NSLayoutConstraint.activate([
            LocationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 7),
            LocationLabel.leadingAnchor.constraint(equalTo: NavigationView.leadingAnchor, constant: 20),
            ])
        NavigationView.addSubview(Location)
        NSLayoutConstraint.activate([
            Location.topAnchor.constraint(equalTo: LocationLabel.topAnchor, constant: 0),
            Location.leadingAnchor.constraint(equalTo: LocationLabel.trailingAnchor, constant: 3),
            Location.trailingAnchor.constraint(equalTo: Pagelimage.leadingAnchor, constant: -15)
            ])
        
        NavigationView.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: Pagelimage.bottomAnchor, constant: 10),
            numberLabel.centerXAnchor.constraint(equalTo: Pagelimage.centerXAnchor, constant: 0)
            ])
        NavigationView.addSubview(number)
        NSLayoutConstraint.activate([
            number.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 0),
            number.centerXAnchor.constraint(equalTo: numberLabel.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(bottomView)
        NSLayoutConstraint.activate([
            bottomView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0),
            bottomView.heightAnchor.constraint(equalToConstant: 100),
            bottomView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            bottomView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            ])
        bottomView.addSubview(photobutton)
        NSLayoutConstraint.activate([
            photobutton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: 0),
            //            agrrebutton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
            photobutton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor, constant: 0),
            photobutton.heightAnchor.constraint(equalToConstant: 45),
            photobutton.widthAnchor.constraint(equalToConstant: 150)
            ])
        bottomView.addSubview(agrrebutton)
        NSLayoutConstraint.activate([
            agrrebutton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: 0),
//            agrrebutton.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20),
            agrrebutton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor, constant: 0),
            agrrebutton.heightAnchor.constraint(equalToConstant: 45),
            agrrebutton.widthAnchor.constraint(equalToConstant: 150)
            ])
//        bottomView.addSubview(cancelbutton)
//        NSLayoutConstraint.activate([
//            cancelbutton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor, constant: 0),
//            cancelbutton.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20),
//            cancelbutton.heightAnchor.constraint(equalToConstant: 45),
//            cancelbutton.widthAnchor.constraint(equalToConstant: 150)
//            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: NavigationView.bottomAnchor, constant: 0),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: bottomView.topAnchor, constant: 0)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
