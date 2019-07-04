//
//  DNotificationCell.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DNotificationCell: UITableViewCell {

    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
       
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var personalimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "discount")
        image.clipsToBounds = true
        image.layer.cornerRadius = 7
        image.layer.masksToBounds = true
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    

    
    var Descriplabel : UILabel = {
        let label = UILabel()
        label.text = "thes is a damy conntent"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var timelabel : UILabel = {
        let label = UILabel()
        label.text = "3:00"
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var datelabel : UILabel = {
        let label = UILabel()
        label.text = "20 october"
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupview()
        
        
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
            personalimage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            personalimage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 30),
            personalimage.heightAnchor.constraint(equalToConstant: 14),
            personalimage.widthAnchor.constraint(equalToConstant: 14)
            ])

        tablecell.addSubview(Descriplabel)
        NSLayoutConstraint.activate([
            Descriplabel.topAnchor.constraint(equalTo: personalimage.bottomAnchor, constant: 5),
            Descriplabel.leadingAnchor.constraint(equalTo: personalimage.leadingAnchor, constant: 5),
            
            ])
        tablecell.addSubview(timelabel)
        NSLayoutConstraint.activate([
            timelabel.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -20),
            timelabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 15),
            ])
        tablecell.addSubview(datelabel)
        NSLayoutConstraint.activate([
            datelabel.topAnchor.constraint(equalTo: timelabel.bottomAnchor, constant: 0),
            datelabel.trailingAnchor.constraint(equalTo: timelabel.trailingAnchor, constant: 0)
            ])
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
