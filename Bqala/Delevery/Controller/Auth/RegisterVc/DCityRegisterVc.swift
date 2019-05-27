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
        navigationController?.navigationBar.isHidden = true
    }
    
    
    @objc func ischeck(){
        if mainView.notcheckButton.isHidden == true{
            mainView.checkButton.isHidden = true
            mainView.notcheckButton.isHidden = false
        }
    }
    @objc func notCheck(){
        if mainView.checkButton.isHidden == true {
            mainView.notcheckButton.isHidden = true
            mainView.checkButton.isHidden = false
        }
    }
    
    func settarget(){
        mainView.notcheckButton.addTarget(self, action: #selector(notCheck), for: .touchUpInside)
        mainView.checkButton.addTarget(self, action: #selector(ischeck), for: .touchUpInside)
    }




}
