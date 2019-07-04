//
//  DnotificationVc.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DnotificationVc: BaseController {
    
    var mainview : DnotificationView!{
        return view as? DnotificationView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DnotificationView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        
        setupSideMenu()
        navigation()
    }
    
    
    func navigation(){
        
        navigationController?.isNavigationBarHidden = false
            title = "Notefication"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    
    
    

    

}


extension DnotificationVc : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "DNotificationCell") as? DNotificationCell
        
        return cell!
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //        present(talabatyDetailsVC(), animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 80
    }
    
    
    
    
}

