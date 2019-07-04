//
//  DForgetPassVC.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DForgetPassVC: BaseController {

    var mainview : DForgetPassView!{
        return view as? DForgetPassView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DForgetPassView()
        setTarget()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
    }
    
    
    @objc func confirm(){
        navigationController?.pushViewController(DConformPassVc(), animated: true)
    }
    func setTarget(){
        mainview.NextButton.addTarget(self, action: #selector(confirm), for: .touchUpInside)
    }
    
  
    
}
