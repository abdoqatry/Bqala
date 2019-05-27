//
//  DRegisterPhotosVC.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DRegisterPhotosVC: BaseController {
    
    var mainView : DRegisterPhotosView!{
        return view as? DRegisterPhotosView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DRegisterPhotosView()
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
