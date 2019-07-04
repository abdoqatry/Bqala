//
//  ProfileVc.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class ProfileVc: BaseController {

    var mainview : ProfileView!{
        return view as? ProfileView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view = ProfileView()
        setTarget()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setnavigation()
        setProfile()
        setupSideMenu()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
    }
    
    func setProfile(){
        SVProgressHUD.show()
        let url = URL(string: AuthService.instance.userImage ?? "")
        mainview.personalImage.kf.setImage(with: url)
        mainview.name.text = AuthService.instance.userName
        mainview.phone.text = AuthService.instance.userPhone
        mainview.mail.text = AuthService.instance.userEmail
        mainview.Area.text = AuthService.instance.UserAdrres
        mainview.car.text = AuthService.instance.Usercartype
        mainview.carNumber.text = AuthService.instance.UsercarNumber
        mainview.carModel.text = AuthService.instance.UsercarModel
        mainview.license.text = AuthService.instance.UserLicence
        mainview.Identy.text = AuthService.instance.UserIdentyNumber
        let urli = URL(string: AuthService.instance.UserIdentityimage ?? "")
        mainview.Identyimg.kf.setImage(with: urli)
        let urlL = URL(string: AuthService.instance.UserLicinecImage ?? "")
        mainview.licenseimg.kf.setImage(with: urlL)
        let urla = URL(string: AuthService.instance.UserapplicatioImage ?? "")
        mainview.applicationimg.kf.setImage(with: urla)
        let urlc = URL(string: AuthService.instance.UsercarImage ?? "")
        mainview.carphoto.kf.setImage(with: urlc)
        SVProgressHUD.dismiss()
        
    }
    
    func setnavigation(){
        title = "Profile"
        let sidemenuBut = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(handleMenuTapped))
        navigationItem.leftBarButtonItem = sidemenuBut
    }
    
    @objc func edit(){
        SVProgressHUD.show()
        let vc = EditProfileVc()
        vc.mainview.name.text = mainview.name.text
        vc.mainview.phone.text = mainview.name.text
        vc.mainview.mail.text = mainview.mail.text
        vc.mainview.Identy.text = mainview.Identy.text
        vc.mainview.Area.text = mainview.Area.text
        vc.mainview.car.text = mainview.car.text
        vc.mainview.carNumber.text = mainview.carNumber.text
        vc.mainview.carModel.text = mainview.carModel.text
        vc.mainview.license.text = mainview.license.text
        vc.mainview.Identyimg = mainview.Identyimg
        vc.mainview.carphoto = mainview.carphoto
        vc.mainview.licenseimg = mainview.licenseimg
        vc.mainview.applicationimg = mainview.applicationimg
        SVProgressHUD.dismiss()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func setTarget(){
        mainview.editbutton.addTarget(self, action: #selector(edit), for:.touchUpInside)
    }



}
