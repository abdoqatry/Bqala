//
//  DSideMenuVC.swift
//  Bqala
//
//  Created by Moe on 5/28/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DSideMenuVC: BaseController {

    var mainview : DSIdeMenuView!{
        return view as? DSIdeMenuView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DSIdeMenuView()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .clear
        view.isOpaque = false
        mainview.orderView.isUserInteractionEnabled = true
        mainview.HomeView.isUserInteractionEnabled = true
        mainview.CurrentView.isUserInteractionEnabled = true
        mainview.AccoutView.isUserInteractionEnabled = true
        mainview.AboutView.isUserInteractionEnabled = true
        mainview.CallusView.isUserInteractionEnabled = true
        mainview.orderView.isUserInteractionEnabled = true
        settarget()
        
    }
    
    @objc func home(){
        navigationController?.pushViewController(DHomeVc(), animated: true)
    }
    @objc func current(){
        navigationController?.pushViewController(CurrentORderVC(), animated: true)
    }
    @objc func About(){
        navigationController?.pushViewController(DAboutVc(), animated: true)
    }
    @objc func Call (){
        navigationController?.pushViewController(DCallusVC(), animated: true)
    }
    
    @objc func trip(){
        navigationController?.pushViewController(TripRecordVC(), animated: true)
    }
    
    @objc func profile(){
        navigationController?.pushViewController(ProfileVc(), animated: true)
    }
    
    @objc func orders(){
        navigationController?.pushViewController(OrderRecordVC(), animated: true)
    }
    
    func settarget(){
        mainview.orderView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.orders)))
        mainview.HomeView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.home)))
        mainview.CurrentView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.current)))
        mainview.AccoutView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.profile)))
        mainview.AboutView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.About)))
        mainview.TripView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.trip)))
        mainview.CallusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.Call)))
        
    }
    
    



}
