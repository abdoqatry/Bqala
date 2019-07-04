//
//  AcouuntView.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class AcouuntView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var navigationView : UIView = {
       let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var blancelabel : UILabel = {
       let label = UILabel()
        label.text = "current balance"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var balanceView : UILabel = {
        let view = UILabel()
        view.text = "33345 ssd"
        view.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 15)
        view.backgroundColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        view.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.borderWidth = 0.2
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var MiddleView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        view.layer.cornerRadius = 4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var blanceMonthlabel : UILabel = {
        let label = UILabel()
        label.text = "Earnings per month"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var blanceMonth : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line1 : UIView = {
       let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //
    var spenddinglabel : UILabel = {
        let label = UILabel()
        label.text = "Average spending"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var spendding : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //
    var Addmissionlabel : UILabel = {
        let label = UILabel()
        label.text = "Admission rate"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var addmision : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var DetailsView : UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        view.layer.cornerRadius = 4
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var detailLabel : UILabel = {
       let label = UILabel()
        label.text = "Details :"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // slary
    var Salarylabel : UILabel = {
        let label = UILabel()
        label.text = "Admission rate"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var Salary : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line4 : UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //
    var Statementlabel : UILabel = {
        let label = UILabel()
        label.text = "last settlement"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var statment : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line5 : UIView = {
        let view = UIView()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // cash
    var cashlabel : UILabel = {
        let label = UILabel()
        label.text = "Cash receipt"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var cash : UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
//    var line6 : UIView = {
//        let view = UIView()
//
//        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    // total
//    var Totallabel : UILabel = {
//        let label = UILabel()
//        label.text = "total"
//        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        label.font = UIFont.boldSystemFont(ofSize: 14)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    var total : UILabel = {
//        let label = UILabel()
//        label.text = "30"
//        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        label.font = UIFont.boldSystemFont(ofSize: 12)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//    var line7 : UIView = {
//        let view = UIView()
//
//        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.7106699486)
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
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
        mainView.addSubview(navigationView)
        NSLayoutConstraint.activate([
            navigationView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            navigationView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            navigationView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            navigationView.heightAnchor.constraint(equalToConstant: 170)
            ])
        navigationView.addSubview(blancelabel)
        NSLayoutConstraint.activate([
            blancelabel.topAnchor.constraint(equalTo: navigationView.topAnchor, constant: 30),
            blancelabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0)
            ])
        navigationView.addSubview(balanceView)
        NSLayoutConstraint.activate([
            balanceView.topAnchor.constraint(equalTo: blancelabel.bottomAnchor, constant: 10),
            balanceView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            balanceView.heightAnchor.constraint(equalToConstant: 40),
            balanceView.widthAnchor.constraint(equalToConstant: 110)
            ])
        mainView.addSubview(MiddleView)
        NSLayoutConstraint.activate([
            MiddleView.topAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: -30),
            MiddleView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
            MiddleView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            MiddleView.heightAnchor.constraint(equalToConstant: 220)
            ])
        MiddleView.addSubview(blanceMonthlabel)
        NSLayoutConstraint.activate([
            blanceMonthlabel.topAnchor.constraint(equalTo: MiddleView.topAnchor, constant: 15),
            blanceMonthlabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            
            ])
        MiddleView.addSubview(blanceMonth)
        NSLayoutConstraint.activate([
            blanceMonth.topAnchor.constraint(equalTo: blanceMonthlabel.topAnchor, constant: 0),
            blanceMonth.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
        MiddleView.addSubview(line1)
        NSLayoutConstraint.activate([
            line1.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            line1.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            line1.heightAnchor.constraint(equalToConstant: 1),
            line1.topAnchor.constraint(equalTo: blanceMonthlabel.bottomAnchor, constant: 2)
            
            ])
        
        MiddleView.addSubview(spenddinglabel)
        NSLayoutConstraint.activate([
            spenddinglabel.topAnchor.constraint(equalTo: line1.topAnchor, constant: 10),
            spenddinglabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            
            ])
        MiddleView.addSubview(spendding)
        NSLayoutConstraint.activate([
            spendding.topAnchor.constraint(equalTo: spenddinglabel.topAnchor, constant: 0),
            spendding.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
        MiddleView.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1),
            line2.topAnchor.constraint(equalTo: spenddinglabel.bottomAnchor, constant: 2)
            
            ])
        //
        MiddleView.addSubview(Addmissionlabel)
        NSLayoutConstraint.activate([
            Addmissionlabel.topAnchor.constraint(equalTo: line2.topAnchor, constant: 10),
            Addmissionlabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            ])
        MiddleView.addSubview(addmision)
        NSLayoutConstraint.activate([
            addmision.topAnchor.constraint(equalTo: Addmissionlabel.topAnchor, constant: 0),
            addmision.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
        MiddleView.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1),
            line3.topAnchor.constraint(equalTo: Addmissionlabel.bottomAnchor, constant: 2)
            ])
        MiddleView.addSubview(DetailsView)
        NSLayoutConstraint.activate([
            DetailsView.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 0),
            DetailsView.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            DetailsView.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            DetailsView.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        DetailsView.addSubview(detailLabel)
        NSLayoutConstraint.activate([
            detailLabel.centerYAnchor.constraint(equalTo: DetailsView.centerYAnchor, constant: 0),
            detailLabel.leadingAnchor.constraint(equalTo: DetailsView.leadingAnchor, constant: 10)
            ])
        // salary
        MiddleView.addSubview(Salarylabel)
        NSLayoutConstraint.activate([
            Salarylabel.topAnchor.constraint(equalTo: DetailsView.bottomAnchor, constant: 10),
            Salarylabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            ])
        MiddleView.addSubview(Salary)
        NSLayoutConstraint.activate([
            Salary.topAnchor.constraint(equalTo: Salarylabel.topAnchor, constant: 0),
            Salary.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
        MiddleView.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1),
            line4.topAnchor.constraint(equalTo: Salarylabel.bottomAnchor, constant: 2)
            ])
        // statement
        MiddleView.addSubview(Statementlabel)
        NSLayoutConstraint.activate([
            Statementlabel.topAnchor.constraint(equalTo: line4.bottomAnchor, constant: 10),
            Statementlabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            ])
        MiddleView.addSubview(statment)
        NSLayoutConstraint.activate([
            statment.topAnchor.constraint(equalTo: Statementlabel.topAnchor, constant: 0),
            statment.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
        MiddleView.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
            line5.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
            line5.heightAnchor.constraint(equalToConstant: 1),
            line5.topAnchor.constraint(equalTo: Statementlabel.bottomAnchor, constant: 2)
            ])
        // cach
        MiddleView.addSubview(cashlabel)
        NSLayoutConstraint.activate([
            cashlabel.topAnchor.constraint(equalTo: line5.bottomAnchor, constant: 10),
            cashlabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
            ])
        MiddleView.addSubview(cash)
        NSLayoutConstraint.activate([
            cash.topAnchor.constraint(equalTo: cashlabel.topAnchor, constant: 0),
            cash.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
            ])
//        MiddleView.addSubview(line6)
//        NSLayoutConstraint.activate([
//            line6.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
//            line6.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
//            line6.heightAnchor.constraint(equalToConstant: 1),
//            line6.topAnchor.constraint(equalTo: cashlabel.bottomAnchor, constant: 2)
//            ])
        // total
//        MiddleView.addSubview(Totallabel)
//        NSLayoutConstraint.activate([
//            Totallabel.topAnchor.constraint(equalTo: line6.bottomAnchor, constant: 10),
//            Totallabel.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 10),
//            ])
//        MiddleView.addSubview(total)
//        NSLayoutConstraint.activate([
//            total.topAnchor.constraint(equalTo: Totallabel.topAnchor, constant: 0),
//            total.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: -20)
//            ])
//        MiddleView.addSubview(line7)
//        NSLayoutConstraint.activate([
//            line7.leadingAnchor.constraint(equalTo: MiddleView.leadingAnchor, constant: 0),
//            line7.trailingAnchor.constraint(equalTo: MiddleView.trailingAnchor, constant: 0),
//            line7.heightAnchor.constraint(equalToConstant: 1),
//            line7.topAnchor.constraint(equalTo: Totallabel.bottomAnchor, constant: 2)
//            ])
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
