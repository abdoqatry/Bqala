//
//  OrderDetailsCell.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderDetailsCell: UITableViewCell {

    
    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //        view.layer.cornerRadius = 14.0
        //        view.layer.applySketchShadow(color: #colorLiteral(red: 0.1647058824, green: 0.1411764706, blue: 0.2588235294, alpha: 1), alpha: 0.5, x: 0, y: 9, blur: 14.5, spread: 0)
        //        view.layer.borderColor = UIColor.paleGreyTwo.cgColor
        //        view.layer.borderWidth = 0.5
        //        view.layer.cornerRadius = 14
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var personalimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "groceries")
        image.clipsToBounds = true
        image.layer.cornerRadius = 10
        image.layer.masksToBounds = true
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    var namelabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var Descriplabel : UILabel = {
        let label = UILabel()
        label.text = "total size"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var timelabel : UILabel = {
        let label = UILabel()
        label.text = "16"
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var datelabel : UILabel = {
//        let label = UILabel()
//        label.text = "20 october"
//        label.font = UIFont.systemFont(ofSize: 12)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
    var amountLabel : UILabel = {
       let label = UILabel()
        label.text = "Amout"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var amount : UILabel = {
        let label = UILabel()
        label.text = "5"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupview()
        
        
    }
    
    func config(data:Item){
     namelabel.text = data.productName
        timelabel.text = data.size
        if let qauan = data.quantity{
             amount.text = String(qauan)
        }
        let url = URL(string: data.productImage ?? "")
        personalimage.kf.setImage(with: url)
       
    }
    
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            ])
        tablecell.addSubview(personalimage)
        NSLayoutConstraint.activate([
            personalimage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 15),
            personalimage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 30),
            personalimage.heightAnchor.constraint(equalToConstant: 40),
            personalimage.widthAnchor.constraint(equalToConstant: 40)
            ])
        tablecell.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.topAnchor.constraint(equalTo: personalimage.topAnchor, constant: 0),
            namelabel.leadingAnchor.constraint(equalTo: personalimage.trailingAnchor, constant: 10),
            
            ])
        tablecell.addSubview(Descriplabel)
        NSLayoutConstraint.activate([
            Descriplabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 0),
            Descriplabel.leadingAnchor.constraint(equalTo: namelabel.leadingAnchor, constant: 0),
            
            ])
        tablecell.addSubview(timelabel)
        NSLayoutConstraint.activate([
            timelabel.leadingAnchor.constraint(equalTo: Descriplabel.trailingAnchor, constant: 5),
            timelabel.topAnchor.constraint(equalTo: Descriplabel.topAnchor, constant:0),
            ])
//        tablecell.addSubview(datelabel)
//        NSLayoutConstraint.activate([
//            datelabel.topAnchor.constraint(equalTo: timelabel.bottomAnchor, constant: 0),
//            datelabel.trailingAnchor.constraint(equalTo: timelabel.trailingAnchor, constant: 0)
//            ])
        tablecell.addSubview(amountLabel)
        NSLayoutConstraint.activate([
            amountLabel.topAnchor.constraint(equalTo: Descriplabel.bottomAnchor, constant: 0),
            amountLabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            ])
        tablecell.addSubview(amount)
        NSLayoutConstraint.activate([
            amount.topAnchor.constraint(equalTo: amountLabel.bottomAnchor, constant: 0),
            amount.centerXAnchor.constraint(equalTo: amountLabel.centerXAnchor, constant: 0)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
 

}
