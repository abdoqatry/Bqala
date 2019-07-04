//
//  TripRecordView.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class TripRecordView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var personalImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "user (1)")
        image.layer.cornerRadius = 60
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
        label.font = UIFont.systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var evalutelabel : UILabel = {
        let label = UILabel()
        label.text = "evalute user"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var evalute : UILabel = {
        let label = UILabel()
        label.text = "3.4"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var Record : UILabel = {
        let label = UILabel()
        label.text = "Trip Record"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var currentView : UIView = {
       let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.applySketchShadow()
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        view.layer.borderWidth = 0.5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var currentLabel : UILabel = {
        let label = UILabel()
        label.text = "current trip"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var currentnumber : UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var finshedView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.applySketchShadow()
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        view.layer.borderWidth = 0.5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var finishedLabel : UILabel = {
        let label = UILabel()
        label.text = "finished trip"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var finishednumber : UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var cancelView : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.layer.applySketchShadow()
        view.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        view.layer.borderWidth = 0.5
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var cancelLabel : UILabel = {
        let label = UILabel()
        label.text = "pendding trip"
        label.textColor = #colorLiteral(red: 0.06274509804, green: 0.5098039216, blue: 0.8588235294, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cancelnumber : UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var endPrograss : MBCircularProgressBarView = {
        let prograss = MBCircularProgressBarView()
        prograss.value = 60
        prograss.backgroundColor = .clear
//        prograss.progressColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.emptyLineColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.progressLineWidth = 4
        prograss.emptyLineWidth = 4
        prograss.progressColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        prograss.translatesAutoresizingMaskIntoConstraints = false
        return prograss
    }()
    var pendinglabel : UILabel = {
       let label = UILabel()
        label.text = "pending trip"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var cancelPrograss : MBCircularProgressBarView = {
        let prograss = MBCircularProgressBarView()
        prograss.value = 60
        prograss.backgroundColor = .clear
        //        prograss.progressColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.emptyLineColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.progressLineWidth = 4
        prograss.emptyLineWidth = 4
        prograss.progressColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        prograss.translatesAutoresizingMaskIntoConstraints = false
        return prograss
    }()
    var finshlabel : UILabel = {
        let label = UILabel()
        label.text = "finshed trip"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var currentPrograss : MBCircularProgressBarView = {
        let prograss = MBCircularProgressBarView()
        prograss.value = 60
        prograss.backgroundColor = .clear
        //        prograss.progressColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.emptyLineColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        prograss.progressLineWidth = 4
        prograss.emptyLineWidth = 4
        prograss.progressColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        prograss.translatesAutoresizingMaskIntoConstraints = false
        return prograss
    }()
    var currentlabel2 : UILabel = {
        let label = UILabel()
        label.text = "current trip"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var recordButton : UIButton = {
       let button = UIButton()
        button.setTitle("trip record", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
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
        mainView.addSubview(personalImage)
        NSLayoutConstraint.activate([
            personalImage.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            personalImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 40),
            personalImage.heightAnchor.constraint(equalToConstant: 120),
            personalImage.widthAnchor.constraint(equalToConstant: 120)
            ])
        mainView.addSubview(namelabel)
        NSLayoutConstraint.activate([
            namelabel.topAnchor.constraint(equalTo: personalImage.bottomAnchor, constant: 10),
            namelabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(evalutelabel)
        NSLayoutConstraint.activate([
            evalutelabel.topAnchor.constraint(equalTo: namelabel.bottomAnchor, constant: 0),
            evalutelabel.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: -10),
            ])
        mainView.addSubview(evalute)
        NSLayoutConstraint.activate([
            evalute.topAnchor.constraint(equalTo: evalutelabel.topAnchor, constant: 0),
            evalute.leadingAnchor.constraint(equalTo: evalutelabel.trailingAnchor, constant: 5)
            ])
        mainView.addSubview(Record)
        NSLayoutConstraint.activate([
            Record.topAnchor.constraint(equalTo: evalute.bottomAnchor, constant: 20),
            Record.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            ])
        mainView.addSubview(currentView)
        NSLayoutConstraint.activate([
            currentView.topAnchor.constraint(equalTo: Record.bottomAnchor, constant: 10),
            currentView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            currentView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50),
            currentView.heightAnchor.constraint(equalToConstant: 30)
            ])
        currentView.addSubview(currentLabel)
        NSLayoutConstraint.activate([
            currentLabel.centerYAnchor.constraint(equalTo: currentView.centerYAnchor, constant: 0),
            currentLabel.leadingAnchor.constraint(equalTo: currentView.leadingAnchor, constant: 10),
            ])
        currentView.addSubview(currentnumber)
        NSLayoutConstraint.activate([
            currentnumber.topAnchor.constraint(equalTo: currentLabel.topAnchor, constant: 0),
            currentnumber.trailingAnchor.constraint(equalTo: currentView.trailingAnchor, constant: -10)
            ])
        // finished
        mainView.addSubview(finshedView)
        NSLayoutConstraint.activate([
            finshedView.topAnchor.constraint(equalTo: currentView.bottomAnchor, constant: 10),
            finshedView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            finshedView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50),
            finshedView.heightAnchor.constraint(equalToConstant: 30)
            ])
        finshedView.addSubview(finishedLabel)
        NSLayoutConstraint.activate([
            finishedLabel.centerYAnchor.constraint(equalTo: finshedView.centerYAnchor, constant: 0),
            finishedLabel.leadingAnchor.constraint(equalTo: finshedView.leadingAnchor, constant: 10),
            ])
        finshedView.addSubview(finishednumber)
        NSLayoutConstraint.activate([
            finishednumber.topAnchor.constraint(equalTo: finishedLabel.topAnchor, constant: 0),
            finishednumber.trailingAnchor.constraint(equalTo: finshedView.trailingAnchor, constant: -10)
            ])
        // cancel
        mainView.addSubview(cancelView)
        NSLayoutConstraint.activate([
            cancelView.topAnchor.constraint(equalTo: finshedView.bottomAnchor, constant: 10),
            cancelView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            cancelView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50),
            cancelView.heightAnchor.constraint(equalToConstant: 30)
            ])
        cancelView.addSubview(cancelLabel)
        NSLayoutConstraint.activate([
            cancelLabel.centerYAnchor.constraint(equalTo: cancelView.centerYAnchor, constant: 0),
            cancelLabel.leadingAnchor.constraint(equalTo: cancelView.leadingAnchor, constant: 10),
            ])
        cancelView.addSubview(cancelnumber)
        NSLayoutConstraint.activate([
            cancelnumber.topAnchor.constraint(equalTo: cancelLabel.topAnchor, constant: 0),
            cancelnumber.trailingAnchor.constraint(equalTo: cancelView.trailingAnchor, constant: -10)
            ])
        
        mainView.addSubview(endPrograss)
        NSLayoutConstraint.activate([
            endPrograss.topAnchor.constraint(equalTo: cancelView.bottomAnchor, constant: 30),
            endPrograss.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            endPrograss.heightAnchor.constraint(equalToConstant: 60),
            endPrograss.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainView.addSubview(pendinglabel)
        NSLayoutConstraint.activate([
            pendinglabel.topAnchor.constraint(equalTo: endPrograss.bottomAnchor, constant: 10),
            pendinglabel.centerXAnchor.constraint(equalTo: endPrograss.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(cancelPrograss)
        NSLayoutConstraint.activate([
            cancelPrograss.topAnchor.constraint(equalTo: endPrograss.topAnchor, constant: 0),
            cancelPrograss.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 30),
            cancelPrograss.heightAnchor.constraint(equalToConstant: 60),
            cancelPrograss.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainView.addSubview(finshlabel)
        NSLayoutConstraint.activate([
            finshlabel.topAnchor.constraint(equalTo: cancelPrograss.bottomAnchor, constant: 10),
            finshlabel.centerXAnchor.constraint(equalTo: cancelPrograss.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(currentPrograss)
        NSLayoutConstraint.activate([
            currentPrograss.topAnchor.constraint(equalTo: cancelPrograss.topAnchor, constant: 0),
            currentPrograss.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -30),
            currentPrograss.heightAnchor.constraint(equalToConstant: 60),
            currentPrograss.widthAnchor.constraint(equalToConstant: 60)
            ])
        mainView.addSubview(currentlabel2)
        NSLayoutConstraint.activate([
            currentlabel2.topAnchor.constraint(equalTo: currentPrograss.bottomAnchor, constant: 10),
            currentlabel2.centerXAnchor.constraint(equalTo: currentPrograss.centerXAnchor, constant: 0)
            ])
        mainView.addSubview(recordButton)
        NSLayoutConstraint.activate([
            recordButton.topAnchor.constraint(equalTo: currentlabel2.bottomAnchor, constant: 10),
            recordButton.centerXAnchor.constraint(equalTo: mainView.centerXAnchor, constant: 0),
            recordButton.heightAnchor.constraint(equalToConstant: 30)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
