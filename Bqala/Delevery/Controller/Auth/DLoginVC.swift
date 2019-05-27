//
//  DLoginVC.swift
//  Bqala
//
//  Created by Moe on 5/24/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DLoginVC: BaseController {
    
    var mainview : DLoginView!{
        return view as? DLoginView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DLoginView()
        mainview.singinButton.addTarget(self, action: #selector(from), for: .touchUpInside)
        
    }
    @objc func from(){
        print("shjkhfkdshflkhjlksjlklk")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    



}
