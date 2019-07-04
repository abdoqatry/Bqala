//
//  OrderRecordView.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class OrderRecordView: UIView {

    var mainView : UIView = {
        let view = UIView()
        view.backgroundColor =  #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var pastButton : UIButton = {
       let button = UIButton()
        button.setTitle("past", for: .normal)
//        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var cancelButton : UIButton = {
        let button = UIButton()
        button.setTitle("pending", for: .normal)
//        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [cancelButton, pastButton])
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var selectedView : UIView = {
       let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.3745582104, green: 0.7351091256, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var selectedView2 : UIView = {
        let view = UIView()
//        view.backgroundColor = #colorLiteral(red: 0.3745582104, green: 0.7351091256, blue: 1, alpha: 1)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mainTableView: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(PastOrdercell.self, forCellReuseIdentifier: "PastOrdercell")
        
        tableV.translatesAutoresizingMaskIntoConstraints = false
        return tableV
    }()
    lazy var mainTableView2: UITableView = {
        let tableV = UITableView()
        tableV.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        tableV.isOpaque = false
        tableV.backgroundView = nil
        tableV.tableFooterView = UIView()
        tableV.separatorInset = .init(top: 30, left: 0, bottom: 10, right: 0)
        tableV.contentInset = .zero
        tableV.separatorColor = .clear
        tableV.register(CancelCell.self, forCellReuseIdentifier: "CancelCell")
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
        mainView.addSubview(pastButton)
        NSLayoutConstraint.activate([
//            pastButton.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
//            pastButton.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            pastButton.heightAnchor.constraint(equalToConstant: 40),
//            pastButton.widthAnchor.constraint(equalToConstant: 150),

            ])
        mainView.addSubview(cancelButton)
        NSLayoutConstraint.activate([
//            cancelButton.topAnchor.constraint(equalToSystemSpacingBelow: mainView.topAnchor, multiplier: 0),
//            cancelButton.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
//            cancelButton.leadingAnchor.constraint(equalTo: pastButton.trailingAnchor, constant: 0),
            cancelButton.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            stackView.heightAnchor.constraint(equalToConstant: 40)
            ])
        mainView.addSubview(selectedView)
        NSLayoutConstraint.activate([
            selectedView.topAnchor.constraint(equalTo: pastButton.bottomAnchor, constant: 1),
            selectedView.leadingAnchor.constraint(equalTo: pastButton.leadingAnchor, constant: 0),
            selectedView.trailingAnchor.constraint(equalTo: pastButton.trailingAnchor, constant: 0),
            selectedView.heightAnchor.constraint(equalToConstant: 3)
            ])
        mainView.addSubview(selectedView2)
        NSLayoutConstraint.activate([
            selectedView2.topAnchor.constraint(equalTo: cancelButton.bottomAnchor, constant: 1),
            selectedView2.leadingAnchor.constraint(equalTo: cancelButton.leadingAnchor, constant: 0),
            selectedView2.trailingAnchor.constraint(equalTo: cancelButton.trailingAnchor, constant: 0),
            selectedView2.heightAnchor.constraint(equalToConstant: 3)
            ])
        mainView.addSubview(mainTableView)
        NSLayoutConstraint.activate([
            mainTableView.topAnchor.constraint(equalTo: selectedView.bottomAnchor, constant: 1),
            mainTableView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
        mainView.addSubview(mainTableView2)
        NSLayoutConstraint.activate([
            mainTableView2.topAnchor.constraint(equalTo: selectedView.bottomAnchor, constant: 1),
            mainTableView2.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
            mainTableView2.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
            mainTableView2.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
            ])
//        mainView.addSubview(segmantView)
//        NSLayoutConstraint.activate([
//            segmantView.topAnchor.constraint(equalTo: pastButton.bottomAnchor, constant: 0),
//            segmantView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 0),
//            segmantView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: 0),
//            segmantView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: 0)
//            ])
        
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
    
//    class menuButton: UIButton {
//
//        let selectionView = SelectionView()
//
//        var isMenuSelected: Bool = false {
//            didSet {
//                if isMenuSelected {
//                    selectionView.backgroundColor = #colorLiteral(red: 0.3745582104, green: 0.7351091256, blue: 1, alpha: 1)
//                    addSubview(selectionView)
//                    selectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//                    selectionView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
//                    selectionView.widthAnchor.constraint(equalTo: superview?.widthAnchor ?? 100, multiplier: 0.9).isActive = true
//                    setTitleColor(#colorLiteral(red: 0.3745582104, green: 0.7351091256, blue: 1, alpha: 1), for: .normal)
//                } else {
//                    selectionView.removeFromSuperview()
//                    setTitleColor(#colorLiteral(red: 0.4744570851, green: 0.4745410085, blue: 0.4744452834, alpha: 1), for: .normal)
//                }
//            }
//        }
//
//}
//
//
//}
//
//class SelectionView: UIView {
//    override var intrinsicContentSize: CGSize {
//        return CGSize(width: 0, height: 1)
//    }
//}
