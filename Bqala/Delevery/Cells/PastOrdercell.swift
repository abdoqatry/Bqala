//
//  PastOrdercell.swift
//  Bqala
//
//  Created by Moe on 5/30/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class PastOrdercell: UITableViewCell {

  
    var tablecell : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var personalimage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "shopping-bag (4)")
        image.clipsToBounds = true
        //        image.layer.cornerRadius = 7
        image.layer.masksToBounds = true
        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var dateLabel : UILabel = {
        let label = UILabel()
        label.text = "order date"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var date : UILabel = {
        let label = UILabel()
        label.text = "20/11/2013"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var numberLabel : UILabel = {
        let label = UILabel()
        label.text = "order number"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var number : UILabel = {
        let label = UILabel()
        label.text = "2034"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var OrderDetailLabel : UILabel = {
        let label = UILabel()
        label.text = "order Details"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Orderdetail : UILabel = {
        let label = UILabel()
        label.text = "Damy conntent"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var EvaluteButton : UIButton = {
        let button = UIButton()
        button.setTitle("Evalute", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        button.layer.cornerRadius = 16
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        setupview()
        
    }
    
    func config(data:Carts){
        date.text = data.createdAt
        if let Id = data.cartID{
           number.text = String(Id)
        }
        Orderdetail.text = data.location
    }
    
    func setupview(){
        contentView.addSubview(tablecell)
        NSLayoutConstraint.activate([
            tablecell.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            tablecell.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            tablecell.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            tablecell.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
            ])
        tablecell.addSubview(personalimage)
        NSLayoutConstraint.activate([
            personalimage.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 20),
            personalimage.leadingAnchor.constraint(equalTo: tablecell.leadingAnchor, constant: 30),
            personalimage.heightAnchor.constraint(equalToConstant: 40),
            personalimage.widthAnchor.constraint(equalToConstant: 40)
            ])
        tablecell.addSubview(dateLabel)
        NSLayoutConstraint.activate([
            dateLabel.topAnchor.constraint(equalTo: tablecell.topAnchor, constant: 10),
            dateLabel.leadingAnchor.constraint(equalTo: personalimage.trailingAnchor, constant: 5),
            ])
        tablecell.addSubview(date)
        NSLayoutConstraint.activate([
            date.topAnchor.constraint(equalTo: dateLabel.topAnchor, constant: 0),
            date.leadingAnchor.constraint(equalTo: dateLabel.trailingAnchor, constant: 3)
            ])
        tablecell.addSubview(numberLabel)
        NSLayoutConstraint.activate([
            numberLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 0),
            numberLabel.leadingAnchor.constraint(equalTo: dateLabel.leadingAnchor, constant: 0),
            
            ])
        tablecell.addSubview(number)
        NSLayoutConstraint.activate([
            number.topAnchor.constraint(equalTo: numberLabel.topAnchor, constant: 0),
            number.leadingAnchor.constraint(equalTo: numberLabel.trailingAnchor, constant: 5)
            ])
        tablecell.addSubview(OrderDetailLabel)
        NSLayoutConstraint.activate([
            OrderDetailLabel.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 0),
            OrderDetailLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor, constant: 0)
            ])
        tablecell.addSubview(Orderdetail)
        NSLayoutConstraint.activate([
            Orderdetail.leadingAnchor.constraint(equalTo: OrderDetailLabel.trailingAnchor, constant: 5),
            Orderdetail.topAnchor.constraint(equalTo: OrderDetailLabel.topAnchor, constant: 0)
            ])
        tablecell.addSubview(EvaluteButton)
        NSLayoutConstraint.activate([
            EvaluteButton.topAnchor.constraint(equalTo: Orderdetail.topAnchor, constant: -5),
            EvaluteButton.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            EvaluteButton.heightAnchor.constraint(equalToConstant: 30),
            EvaluteButton.widthAnchor.constraint(equalToConstant: 60)
            ])
     evalute()
        
    }
    
    var pressAssistButton: (() -> ())?
    
    private func evalute(){
        tablecell.addSubview(EvaluteButton)
        NSLayoutConstraint.activate([
            EvaluteButton.topAnchor.constraint(equalTo: Orderdetail.topAnchor, constant: -5),
            EvaluteButton.trailingAnchor.constraint(equalTo: tablecell.trailingAnchor, constant: -10),
            EvaluteButton.heightAnchor.constraint(equalToConstant: 30),
            EvaluteButton.widthAnchor.constraint(equalToConstant: 60)
            ])
        
        EvaluteButton.addTarget(self, action: #selector(handlePressassistButton), for: .touchUpInside)
    }
    @objc fileprivate func handlePressassistButton() {
        pressAssistButton?()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
