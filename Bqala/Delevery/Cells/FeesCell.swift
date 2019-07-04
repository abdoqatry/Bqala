//
//  FeesCell.swift
//  Bqala
//
//  Created by Moe on 6/17/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class FeesCell: UITableViewCell {

    var namelabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var valuelabel : UILabel = {
        let label = UILabel()
        label.text = ""
        label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupview()
        
        
    }
    func configer(data:data){
       namelabel.text = data.name
        valuelabel.text = data.value
       
    }
    
     func setupview(){
        contentView.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            namelabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 70),
            
            ])
        contentView.addSubview(valuelabel)
        NSLayoutConstraint.activate([
            valuelabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 0),
            valuelabel.leadingAnchor.constraint(equalTo: namelabel.trailingAnchor, constant: 20),
            
            ])
        
        
    }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
}
