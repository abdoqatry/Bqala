//
//  DSIdeMenuView.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DSIdeMenuView: UIView {

    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6056025257)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var HomeView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Homelabel : UILabel = {
        let label = UILabel()
        label.text = "Home".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line2 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CurrentView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var currentlabel : UILabel = {
        let label = UILabel()
        label.text = "Current order".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line12 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var AboutView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Aboutlabel : UILabel = {
        let label = UILabel()
        label.text = "About app".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line3 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var policeView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var policelabel : UILabel = {
        let label = UILabel()
        label.text = "Police And Condition".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line4 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var CallusView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Calluslabel : UILabel = {
        let label = UILabel()
        label.text = "Call us".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line5 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var ConversationView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var conversationlabel : UILabel = {
        let label = UILabel()
        label.text = "conversation".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line6 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var NoteficationView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Noteficationlabel : UILabel = {
        let label = UILabel()
        label.text = "Notefication".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line7 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var AccoutView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Accoutlabel : UILabel = {
        let label = UILabel()
        label.text = "Acouunt".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line8 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var TripView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var Triplabel : UILabel = {
        let label = UILabel()
        label.text = "Trip record".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line9 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    // order record
    var orderView : UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var orderlabel : UILabel = {
        let label = UILabel()
        label.text = "order record".localize
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var line10 : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.855281464)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainview.backgroundColor = UIColor.fromGradientWithDirection(.topToBottom, frame: self.frame, colors: [#colorLiteral(red: 0.06274509804, green: 0.5058823529, blue: 0.8588235294, alpha: 0.6056025257), #colorLiteral(red: 0.5333333333, green: 0.7098039216, blue: 0.2901960784, alpha: 0.6056025257)])
        
    }
    
    
    func setup(){
        self.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            mainview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
            ])
        mainview.addSubview(HomeView)
        NSLayoutConstraint.activate([ 
            HomeView.topAnchor.constraint(equalTo: mainview.topAnchor, constant: 100),
            HomeView.heightAnchor.constraint(equalToConstant: 40),
            HomeView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            HomeView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        HomeView.addSubview(Homelabel)
        NSLayoutConstraint.activate([
            Homelabel.centerYAnchor.constraint(equalTo: HomeView.centerYAnchor, constant: 0),
            Homelabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line2)
        NSLayoutConstraint.activate([
            line2.topAnchor.constraint(equalTo: HomeView.bottomAnchor, constant: 0),
            line2.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line2.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line2.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(CurrentView)
        NSLayoutConstraint.activate([
            CurrentView.topAnchor.constraint(equalTo: line2.bottomAnchor, constant: 0),
            CurrentView.heightAnchor.constraint(equalToConstant: 40),
            CurrentView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            CurrentView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        CurrentView.addSubview(currentlabel)
        NSLayoutConstraint.activate([
            currentlabel.centerYAnchor.constraint(equalTo: CurrentView.centerYAnchor, constant: 0),
            currentlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line12)
        NSLayoutConstraint.activate([
            line12.topAnchor.constraint(equalTo: CurrentView.bottomAnchor, constant: 0),
            line12.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line12.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line12.heightAnchor.constraint(equalToConstant: 1)
            ])
        mainview.addSubview(AboutView)
        NSLayoutConstraint.activate([
            AboutView.topAnchor.constraint(equalTo: line12.bottomAnchor, constant: 0),
            AboutView.heightAnchor.constraint(equalToConstant: 40),
            AboutView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            AboutView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        AboutView.addSubview(Aboutlabel)
        NSLayoutConstraint.activate([
            Aboutlabel.centerYAnchor.constraint(equalTo: AboutView.centerYAnchor, constant: 0),
            Aboutlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line3)
        NSLayoutConstraint.activate([
            line3.topAnchor.constraint(equalTo: AboutView.bottomAnchor, constant: 0),
            line3.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line3.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line3.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        mainview.addSubview(policeView)
        NSLayoutConstraint.activate([
            policeView.topAnchor.constraint(equalTo: line3.bottomAnchor, constant: 0),
            policeView.heightAnchor.constraint(equalToConstant: 40),
            policeView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            policeView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        policeView.addSubview(policelabel)
        NSLayoutConstraint.activate([
            policelabel.centerYAnchor.constraint(equalTo: policeView.centerYAnchor, constant: 0),
            policelabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line4)
        NSLayoutConstraint.activate([
            line4.topAnchor.constraint(equalTo: policeView.bottomAnchor, constant: 0),
            line4.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line4.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line4.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        mainview.addSubview(CallusView)
        NSLayoutConstraint.activate([
            CallusView.topAnchor.constraint(equalTo: line4.bottomAnchor, constant: 0),
            CallusView.heightAnchor.constraint(equalToConstant: 40),
            CallusView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            CallusView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        CallusView.addSubview(Calluslabel)
        NSLayoutConstraint.activate([
            Calluslabel.centerYAnchor.constraint(equalTo: CallusView.centerYAnchor, constant: 0),
            Calluslabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line5)
        NSLayoutConstraint.activate([
            line5.topAnchor.constraint(equalTo: CallusView.bottomAnchor, constant: 0),
            line5.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line5.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line5.heightAnchor.constraint(equalToConstant: 1)
            ])
        
        mainview.addSubview(ConversationView)
        NSLayoutConstraint.activate([
            ConversationView.topAnchor.constraint(equalTo: line5.bottomAnchor, constant: 0),
            ConversationView.heightAnchor.constraint(equalToConstant: 40),
            ConversationView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            ConversationView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        ConversationView.addSubview(conversationlabel)
        NSLayoutConstraint.activate([
    conversationlabel.centerYAnchor.constraint(equalTo: ConversationView.centerYAnchor, constant: 0),
        conversationlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line6)
        NSLayoutConstraint.activate([
            line6.topAnchor.constraint(equalTo: ConversationView.bottomAnchor, constant: 0),
            line6.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line6.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line6.heightAnchor.constraint(equalToConstant: 1)
            ])
        // notefication
        mainview.addSubview(NoteficationView)
        NSLayoutConstraint.activate([
            NoteficationView.topAnchor.constraint(equalTo: line6.bottomAnchor, constant: 0),
            NoteficationView.heightAnchor.constraint(equalToConstant: 40),
            NoteficationView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            NoteficationView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        NoteficationView.addSubview(Noteficationlabel)
        NSLayoutConstraint.activate([
            Noteficationlabel.centerYAnchor.constraint(equalTo: NoteficationView.centerYAnchor, constant: 0),
            Noteficationlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line7)
        NSLayoutConstraint.activate([
            line7.topAnchor.constraint(equalTo: NoteficationView.bottomAnchor, constant: 0),
            line7.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line7.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line7.heightAnchor.constraint(equalToConstant: 1)
            ])
        // acouut
        mainview.addSubview(AccoutView)
        NSLayoutConstraint.activate([
            AccoutView.topAnchor.constraint(equalTo: line7.bottomAnchor, constant: 0),
            AccoutView.heightAnchor.constraint(equalToConstant: 40),
            AccoutView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            AccoutView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        AccoutView.addSubview(Accoutlabel)
        NSLayoutConstraint.activate([
            Accoutlabel.centerYAnchor.constraint(equalTo: AccoutView.centerYAnchor, constant: 0),
            Accoutlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line8)
        NSLayoutConstraint.activate([
            line8.topAnchor.constraint(equalTo: AccoutView.bottomAnchor, constant: 0),
            line8.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line8.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line8.heightAnchor.constraint(equalToConstant: 1)
            ])
        // trip record
        mainview.addSubview(TripView)
        NSLayoutConstraint.activate([
            TripView.topAnchor.constraint(equalTo: line8.bottomAnchor, constant: 0),
            TripView.heightAnchor.constraint(equalToConstant: 40),
            TripView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            TripView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        TripView.addSubview(Triplabel)
        NSLayoutConstraint.activate([
            Triplabel.centerYAnchor.constraint(equalTo: TripView.centerYAnchor, constant: 0),
            Triplabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line9)
        NSLayoutConstraint.activate([
            line9.topAnchor.constraint(equalTo: TripView.bottomAnchor, constant: 0),
            line9.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line9.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line9.heightAnchor.constraint(equalToConstant: 1)
            ])
        // order record
        mainview.addSubview(orderView)
        NSLayoutConstraint.activate([
            orderView.topAnchor.constraint(equalTo: line9.bottomAnchor, constant: 0),
            orderView.heightAnchor.constraint(equalToConstant: 40),
            orderView.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            orderView.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0)
            ])
        orderView.addSubview(orderlabel)
        NSLayoutConstraint.activate([
            orderlabel.centerYAnchor.constraint(equalTo: orderView.centerYAnchor, constant: 0),
            orderlabel.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 20)
            ])
        mainview.addSubview(line10)
        NSLayoutConstraint.activate([
            line10.topAnchor.constraint(equalTo: orderView.bottomAnchor, constant: 0),
            line10.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            line10.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            line10.heightAnchor.constraint(equalToConstant: 1)
            ])
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
