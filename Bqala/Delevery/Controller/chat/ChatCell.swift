//
//  ChatCell.swift
//  Bqala
//
//  Created by Moe on 6/17/19.
//  Copyright © 2019 Moe. All rights reserved.
//
import UIKit

class ChatCell: UITableViewCell {
    
    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.cornerRadius = 14.0
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        view.isHidden = true
        //        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
        //        view.layer.borderWidth = 0.5
        //        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var chatLable : UILabel = {
        let lable = UILabel()
        lable.numberOfLines = 0
        lable.text = ""
        lable.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        lable.backgroundColor = .clear
        lable.lineBreakMode = .byTruncatingTail
        lable.font = UIFont.CairoRegular(of: 15)
        lable.isHidden = true
        lable.clipsToBounds = true
        //        lable.sizeToFit()
        lable.layer.cornerRadius = 8
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var tablecell2 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9568627451, green: 0.4901960784, blue: 0.1960784314, alpha: 1)
        view.layer.cornerRadius = 14.0
        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        //        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
        //        view.layer.borderWidth = 0.5
        //        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var chatLable2 : UILabel = {
        let lable = UILabel()
        lable.numberOfLines = 0
        lable.text = ""
        lable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        lable.textAlignment = .right
        lable.backgroundColor = .clear
        lable.lineBreakMode = .byTruncatingTail
        lable.font = UIFont.CairoRegular(of: 15)
        lable.clipsToBounds = true
        //        lable.sizeToFit()
        lable.layer.cornerRadius = 8
        lable.adjustsFontSizeToFitWidth = true
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    
    var dateLabel : UILabel = {
        let label = UILabel()
        label.text = "11:5"
        label.font = UIFont.CairoRegular(of: 9)
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var dateLabel2 : UILabel = {
        let label = UILabel()
        label.text = "11:5"
        label.font = UIFont.CairoRegular(of: 9)
        label.isHidden = true
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var senderId : UILabel = {
        let label = UILabel()
        
        
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        setupview()
        
        
    }
    
    
    
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -120),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        //
        tablecell.addSubview(chatLable)
        NSLayoutConstraint.activate([
            chatLable.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 5),
            chatLable.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 10),
            chatLable.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            chatLable.bottomAnchor.constraint(equalTo: tablecell.bottomAnchor, constant: -10),
            
            ])
        tablecell.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: chatLable.bottomAnchor, constant: 0),
            dateLabel.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 20),
            dateLabel.heightAnchor.constraint(equalToConstant: 10)
            ])
        
        contentView.addSubview(tablecell2)
        NSLayoutConstraint.activate([
            tablecell2.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            tablecell2.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            tablecell2.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 120),
            tablecell2.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0)
            ])
        //
        tablecell2.addSubview(chatLable2)
        NSLayoutConstraint.activate([
            chatLable2.topAnchor.constraint(equalTo: tablecell2.topAnchor, constant: 5),
            chatLable2.trailingAnchor.constraint(equalTo: tablecell2.trailingAnchor, constant: -10),
            chatLable2.leadingAnchor.constraint(equalTo: tablecell2.leadingAnchor, constant: 20),
            chatLable2.bottomAnchor.constraint(equalTo: tablecell2.bottomAnchor, constant: -10),
            
            ])
        tablecell2.addSubview(dateLabel2)
        NSLayoutConstraint.activate([
            dateLabel2.topAnchor.constraint(equalTo: chatLable2.bottomAnchor, constant: 0),
            dateLabel2.trailingAnchor.constraint(equalTo: tablecell2.trailingAnchor, constant: -20),
            dateLabel2.heightAnchor.constraint(equalToConstant: 10)
            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
