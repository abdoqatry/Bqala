//
//  BaseController.swift
//  teamSpirit
//
//  Created by Moe on 3/18/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SideMenu
import SVProgressHUD
import MOLH

class BaseController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        
        
        
    }
    
    final func setupNavigationBar() {
        self.navigationController?.navigationBar.barTintColor =  #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1);        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        let attributes = [ NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        //        self.navigationController?.navigationBar.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 90.0)
        self.navigationController?.navigationBar.titleTextAttributes = attributes
        self.navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backItem?.title = ""
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        //        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icBack")
        //        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icBack")
    }
    
    
    // language
    @objc func showalert(){
     

        let alertControl = UIAlertController(title: "change langue", message: nil, preferredStyle: .actionSheet)
        alertControl.addAction(UIAlertAction(title: "arabic", style:.default , handler: Arabic))
        alertControl.addAction(UIAlertAction(title: "English", style: .default, handler: english))
        alertControl.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alertControl, animated: true, completion: nil)
    }
    
    func Arabic(action : UIAlertAction)->Void{
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            self.result(name: "ar")
        }
    }
    
    func english(action : UIAlertAction)->Void{
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
            self.result(name: "en")
        }
    }

    
    func result(name: String) {

        if MOLHLanguage.currentAppleLanguage() != name {
            MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == "en" ? "ar" : "en")
            MOLH.reset()
        }
        
        // MOLH.setLanguageTo(MOLHLanguage.currentAppleLanguage() == name ? "ar" : name)
    }
    

    

    
    let langue = MOLHLanguage.currentAppleLanguage()
    
    
    //    Mark:-  side menu func
     func setupSideMenu() {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: DLoginVC())
        
        //menuRightNavigationController.delegate = self as? UINavigationControllerDelegate
        
        
        if langue == "en"{
            SideMenuManager.default.menuLeftNavigationController = menuRightNavigationController
        }else if langue == "ar"{
            SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        }
        
        //          SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
//        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)
        //  SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
        // (Optional) Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuAnimationBackgroundColor = nil
        SideMenuManager.default.menuAnimationFadeStrength = 0
        SideMenuManager.default.menuDismissOnPush = true
        SideMenuManager.default.menuPushStyle = .defaultBehavior
        SideMenuManager.default.menuEnableSwipeGestures = false
        SideMenuManager.default.menuPresentingViewControllerUserInteractionEnabled = false
        
        
        SideMenuManager.default.menuAllowPushOfSameClassTwice = true
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        //        SideMenuManager.default.menuFadeStatusBar = true
        SideMenuManager.default.menuWidth = max(round(min((view.frame.width), (view.frame.height)) * 0.85), 300)
    }
    @objc func handleMenuTapped() {
        
        if langue == "en"{
            present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
        }else if langue == "ar"{
            present(SideMenuManager.default.menuRightNavigationController!, animated: true, completion: nil)
        }
    }
    
    func setupREfSideMenu() {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: DLoginVC())
        
        //menuRightNavigationController.delegate = self as? UINavigationControllerDelegate
        
        
        if langue == "en"{
            SideMenuManager.default.menuLeftNavigationController = menuRightNavigationController
        }else if langue == "ar"{
            SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        }
        
        //          SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)
        //  SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
//        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
        // (Optional) Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuAnimationBackgroundColor = nil
        SideMenuManager.default.menuAnimationFadeStrength = 0
        SideMenuManager.default.menuDismissOnPush = true
        SideMenuManager.default.menuPushStyle = .defaultBehavior
        
        SideMenuManager.default.menuEnableSwipeGestures = false
        
        SideMenuManager.default.menuAllowPushOfSameClassTwice = true
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        //        SideMenuManager.default.menuFadeStatusBar = true
        SideMenuManager.default.menuWidth = max(round(min((view.frame.width), (view.frame.height)) * 0.85), 300)
    }
    @objc func handleRefMenuTapped() {
        
        if langue == "en"{
            present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
        }else if langue == "ar"{
            present(SideMenuManager.default.menuRightNavigationController!, animated: true, completion: nil)
        }
    }
    
    func setupManSideMenu() {
        let menuRightNavigationController = UISideMenuNavigationController(rootViewController: DLoginVC())
        
        //menuRightNavigationController.delegate = self as? UINavigationControllerDelegate
        
        
        if langue == "en"{
            SideMenuManager.default.menuLeftNavigationController = menuRightNavigationController
        }else if langue == "ar"{
            SideMenuManager.default.menuRightNavigationController = menuRightNavigationController
        }
        
        //          SideMenuManager.default.menuAddPanGestureToPresent(toView: self.navigationController!.navigationBar)
        SideMenuManager.default.menuAddPanGestureToPresent(toView: self.view)
        //  SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.navigationController!.view)
//        SideMenuManager.default.menuAddScreenEdgePanGesturesToPresent(toView: self.view)
        // (Optional) Prevent status bar area from turning black when menu appears:
        SideMenuManager.default.menuFadeStatusBar = false
        SideMenuManager.default.menuAnimationBackgroundColor = nil
        SideMenuManager.default.menuAnimationFadeStrength = 0
        SideMenuManager.default.menuDismissOnPush = true
        SideMenuManager.default.menuPushStyle = .defaultBehavior
        
        SideMenuManager.default.menuEnableSwipeGestures = false
        
        SideMenuManager.default.menuAllowPushOfSameClassTwice = true
        
        SideMenuManager.default.menuPresentMode = .menuSlideIn
        //        SideMenuManager.default.menuFadeStatusBar = true
        SideMenuManager.default.menuWidth = max(round(min((view.frame.width), (view.frame.height)) * 0.85), 300)
    }
    @objc func handleManMenuTapped() {
        
        if langue == "en"{
            present(SideMenuManager.default.menuLeftNavigationController!, animated: true, completion: nil)
        }else if langue == "ar"{
            present(SideMenuManager.default.menuRightNavigationController!, animated: true, completion: nil)
        }
    }
}

