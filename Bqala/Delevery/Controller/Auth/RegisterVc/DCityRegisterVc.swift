//
//  DCityRegisterVc.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DCityRegisterVc: BaseController {

    var mainView : DCityRegisterView!{
        return view as? DCityRegisterView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DCityRegisterView()
        settarget()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
    }
    
    
    @objc func ischeck(){
        if mainView.notcheckButton.isHidden == true{
            mainView.checkButton.isHidden = true
            mainView.notcheckButton.isHidden = false
        }
    }
    @objc func notCheck(){
        if mainView.checkButton2.isHidden == true {
            mainView.notcheckButton2.isHidden = true
            mainView.checkButton2.isHidden = false
        }
    }
    
    @objc func ischeck2(){
        if mainView.notcheckButton2.isHidden == true{
            mainView.checkButton2.isHidden = true
            mainView.notcheckButton2.isHidden = false
        }
    }
    @objc func notCheck2(){
        if mainView.checkButton2.isHidden == true {
            mainView.notcheckButton2.isHidden = true
            mainView.checkButton2.isHidden = false
        }
    }
    
    func settarget(){
        mainView.notcheckButton.addTarget(self, action: #selector(notCheck), for: .touchUpInside)
        mainView.checkButton.addTarget(self, action: #selector(ischeck), for: .touchUpInside)
        
        mainView.notcheckButton2.addTarget(self, action: #selector(notCheck2), for: .touchUpInside)
        mainView.checkButton2.addTarget(self, action: #selector(notCheck2), for: .touchUpInside)
    }




}
