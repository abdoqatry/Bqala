//
//  DconfirmPassView.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DconfirmPassView: UIView {

    
    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var mainImage : UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Layer 1")
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    var shortMsmLable : UILabel = {
        let lable = UILabel()
        lable.text = NSLocalizedString("input code has been sent to", comment: "")
        lable.textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        lable.font = UIFont.boldSystemFont(ofSize: 12)
        //        lable.textAlignment = .left
        //        lable.lineBreakMode = .byCharWrapping
        lable.numberOfLines = 0
        
        lable.translatesAutoresizingMaskIntoConstraints = false
        return lable
    }()
    var phonelabel : UILabel = {
        let label = UILabel()
        label.text = "012393873838"
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var CodeText1 : UITextField = {
        let text = UITextField()
        text.keyboardType = .numberPad
        text.backgroundColor = .clear
        text.textAlignment = .center
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var lineCodeText : UITextView = {
        let line = UITextView()
        line.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    var CodeText2 : UITextField = {
        let text = UITextField()
        text.keyboardType = .numberPad
        text.backgroundColor = .clear
        text.textAlignment = .center
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var lineCodeText2 : UITextView = {
        let line = UITextView()
        line.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    var CodeText3 : UITextField = {
        let text = UITextField()
        text.keyboardType = .numberPad
        text.textAlignment = .center
        text.backgroundColor = .clear
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var lineCodeText3 : UITextView = {
        let line = UITextView()
        line.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    var CodeText4 : UITextField = {
        let text = UITextField()
        text.keyboardType = .numberPad
        text.backgroundColor = .clear
        text.textAlignment = .center
        
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    var lineCodeText4 : UITextView = {
        let line = UITextView()
        line.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.5333333333, blue: 0.5333333333, alpha: 1)
        
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    var textFieldArray: [UITextField] {
        return [CodeText1, CodeText2, CodeText3, CodeText4]
    }
    //    lazy var stackViewAcount: UIStackView = {
    //        let stackView = UIStackView(arrangedSubviews: [CodeText1, CodeText2, CodeText3, CodeText4])
    //        stackView.alignment = .center
    //        stackView.distribution = .equalSpacing
    //        stackView.axis = .horizontal
    //        stackView.translatesAutoresizingMaskIntoConstraints = false
    //        return stackView
    //    }()
    var resentButton : UIButton = {
        let but = UIButton()
        //                but.setTitle("Resent the code", for: .normal)
        but.setTitleColor(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), for: .normal)
        
        but.translatesAutoresizingMaskIntoConstraints = false
        return but
    }()
    
    var ConfirmButton : UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 1)
        button.layer.cornerRadius = 16
        
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
        mainView.addSubview(mainImage)
        NSLayoutConstraint.activate([
            mainImage.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            mainImage.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainImage.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainImage.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        mainView.addSubview(shortMsmLable)
        NSLayoutConstraint.activate([
            //            shortMsmLable.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor, constant: 0),
            shortMsmLable.topAnchor.constraint(equalTo: mainImage.topAnchor, constant: 120),
            shortMsmLable.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 50)
            ])
        mainView.addSubview(phonelabel)
        NSLayoutConstraint.activate([
            phonelabel.leadingAnchor.constraint(equalTo: shortMsmLable.trailingAnchor, constant: 3),
            phonelabel.topAnchor.constraint(equalTo: shortMsmLable.topAnchor, constant: 0)
            ])
        
        
        mainView.addSubview(CodeText1)
        NSLayoutConstraint.activate([
            CodeText1.topAnchor.constraint(equalTo: shortMsmLable.bottomAnchor, constant: 50),
            CodeText1.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 50),
            //CodeText1.trailingAnchor.constraint(equalTo: CodeText2.leadingAnchor, constant: 10.0),
            //            CodeText1.widthAnchor.constraint(equalToConstant: 50),
            CodeText1.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.13),
            CodeText1.heightAnchor.constraint(equalToConstant: 30)
            ])
        mainView.addSubview(lineCodeText)
        NSLayoutConstraint.activate([
            lineCodeText.topAnchor.constraint(equalTo: CodeText1.bottomAnchor, constant: 2),
            lineCodeText.leadingAnchor.constraint(equalTo: CodeText1.leadingAnchor, constant: 0),
            lineCodeText.trailingAnchor.constraint(equalTo: CodeText1.trailingAnchor, constant: 0),
            lineCodeText.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainView.addSubview(CodeText2)
        NSLayoutConstraint.activate([
            CodeText2.topAnchor.constraint(equalTo: shortMsmLable.bottomAnchor, constant: 50),
            CodeText2.leadingAnchor.constraint(equalTo: CodeText1.trailingAnchor, constant: 20.0),
            //            CodeText2.trailingAnchor.constraint(equalTo: CodeText3.leadingAnchor, constant: 20.0),
            CodeText2.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.13),
            CodeText2.heightAnchor.constraint(equalToConstant: 30)
            ])
        mainView.addSubview(lineCodeText2)
        NSLayoutConstraint.activate([
            lineCodeText2.topAnchor.constraint(equalTo: CodeText2.bottomAnchor, constant: 2),
            lineCodeText2.leadingAnchor.constraint(equalTo: CodeText2.leadingAnchor, constant: 0),
            lineCodeText2.trailingAnchor.constraint(equalTo: CodeText2.trailingAnchor, constant: 0),
            lineCodeText2.heightAnchor.constraint(equalToConstant: 1)
            ])
        //
        mainView.addSubview(CodeText3)
        NSLayoutConstraint.activate([
            CodeText3.topAnchor.constraint(equalTo: shortMsmLable.bottomAnchor, constant: 50),
            CodeText3.leadingAnchor.constraint(equalTo: CodeText2.trailingAnchor, constant: 20.0),
            CodeText3.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.13),
            //            CodeText3.trailingAnchor.constraint(equalTo: CodeText4.leadingAnchor, constant: -20),
            CodeText3.heightAnchor.constraint(equalToConstant: 30)
            ])
        mainView.addSubview(lineCodeText3)
        NSLayoutConstraint.activate([
            lineCodeText3.topAnchor.constraint(equalTo: CodeText3.bottomAnchor, constant: 2),
            lineCodeText3.leadingAnchor.constraint(equalTo: CodeText3.leadingAnchor, constant: 0),
            lineCodeText3.trailingAnchor.constraint(equalTo: CodeText3.trailingAnchor, constant: 0),
            lineCodeText3.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        mainView.addSubview(CodeText4)
        NSLayoutConstraint.activate([
            CodeText4.topAnchor.constraint(equalTo: shortMsmLable.bottomAnchor, constant: 50),
            CodeText4.leadingAnchor.constraint(equalTo: CodeText3.trailingAnchor, constant: 20.0),
            CodeText4.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.13),
            //            CodeText4.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -50),
            CodeText4.heightAnchor.constraint(equalToConstant: 30)
            ])
        
        mainView.addSubview(lineCodeText4)
        NSLayoutConstraint.activate([
            lineCodeText4.topAnchor.constraint(equalTo: CodeText4.bottomAnchor, constant: 2),
            lineCodeText4.leadingAnchor.constraint(equalTo: CodeText4.leadingAnchor, constant: 0),
            lineCodeText4.trailingAnchor.constraint(equalTo: CodeText4.trailingAnchor, constant: 0),
            lineCodeText4.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        //        mainView.addSubview(stackViewAcount)
        //        NSLayoutConstraint.activate([
        //            stackViewAcount.topAnchor.constraint(equalTo: shortMsmLable.bottomAnchor, constant: 50),
        //            stackViewAcount.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor, constant: 0),
        //            stackViewAcount.heightAnchor.constraint(equalToConstant: 50),
        //            stackViewAcount.widthAnchor.constraint(equalToConstant: 200)
        //
        //            ])
        mainView.addSubview(resentButton)
        NSLayoutConstraint.activate([
            resentButton.topAnchor.constraint(equalTo: CodeText4.bottomAnchor, constant: 40),
            resentButton.centerXAnchor.constraint(equalTo: mainImage.centerXAnchor, constant: 0),
            resentButton.heightAnchor.constraint(equalToConstant: 16),
            resentButton.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        mainView.addSubview(ConfirmButton)
        NSLayoutConstraint.activate([
            ConfirmButton.topAnchor.constraint(equalTo: resentButton.bottomAnchor, constant: 40),
            ConfirmButton.leadingAnchor.constraint(equalTo: mainImage.leadingAnchor, constant: 60),
            ConfirmButton.heightAnchor.constraint(equalToConstant: 35),
            ConfirmButton.widthAnchor.constraint(equalToConstant: 160)
            ])
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
