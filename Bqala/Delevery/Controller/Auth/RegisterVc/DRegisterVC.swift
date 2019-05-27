//
//  DRegisterVC.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DRegisterVC: BaseController {
    
    var mainview : DRegisterView!{
        return view as? DRegisterView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DRegisterView()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
        
    }
    



}
