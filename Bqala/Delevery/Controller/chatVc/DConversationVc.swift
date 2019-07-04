//
//  DConversationVc.swift
//  Bqala
//
//  Created by Moe on 5/27/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit

class DConversationVc: BaseController {
    
    var mainview : DConversationView!{
        return view as? DConversationView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view = DConversationView()
        mainview.mainTableView.delegate = self
        mainview.mainTableView.dataSource = self
        title = "Notefication"
    }
    

  

}

extension DConversationVc : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return 4
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mainview.mainTableView.dequeueReusableCell(withIdentifier: "DConversationCell") as? DConversationCell
       
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
