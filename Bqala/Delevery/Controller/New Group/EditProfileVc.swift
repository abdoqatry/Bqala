//
//  EditProfileVc.swift
//  Bqala
//
//  Created by Moe on 5/29/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class EditProfileVc: BaseController {

    var mainview : EditProfileView!{
        return view as? EditProfileView
    }
    
     var imagePicker: UIImagePickerController!
    private var is_selected = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        view = EditProfileView()
         imagePicker = UIImagePickerController()
        mainview.personalImage.isUserInteractionEnabled = true
        mainview.Identyimg.isUserInteractionEnabled = true
        mainview.applicationimg.isUserInteractionEnabled = true
        mainview.licenseimg.isUserInteractionEnabled = true
        mainview.carphoto.isUserInteractionEnabled = true
        handelphoto()
        mainview.saveButton.addTarget(self, action: #selector(getdata), for: .touchUpInside)
        
    }
    
    func handelphoto(){
        mainview.personalImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
        mainview.Identyimg.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage1(_:))))
        mainview.licenseimg.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage2(_:))))
        mainview.applicationimg.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage3(_:))))
        mainview.carphoto.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage4(_:))))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "edit profile"
         let url = URL(string: AuthService.instance.userImage ?? "")
         mainview.personalImage.kf.setImage(with: url)
        let urli = URL(string: AuthService.instance.UserIdentityimage ?? "")
        mainview.Identyimg.kf.setImage(with: urli)
        let urlL = URL(string: AuthService.instance.UserLicinecImage ?? "")
        mainview.licenseimg.kf.setImage(with: urlL)
        let urla = URL(string: AuthService.instance.UserapplicatioImage ?? "")
        mainview.applicationimg.kf.setImage(with: urla)
        let urlc = URL(string: AuthService.instance.UsercarImage ?? "")
        mainview.carphoto.kf.setImage(with: urlc)
        
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        SVProgressHUD.dismiss()
    }
    
    
    var picked_Image : UIImage?
    var picked_Image2 : UIImage?
    var picked_Image3 : UIImage?
    var picked_Image4 : UIImage?
    var picked_Image5: UIImage?
    
    // chose image personal image
    @objc func chooseImage(_ sender: UITapGestureRecognizer){
        is_selected = 5
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = UIImagePickerController.SourceType.camera
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .savedPhotosAlbum;
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true)
        
    }
    
    // chose image identy image
    @objc func chooseImage1(_ sender: UITapGestureRecognizer){
        is_selected = 1
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = UIImagePickerController.SourceType.camera
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .savedPhotosAlbum;
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true)
        
    }
    // chose image application image
    @objc func chooseImage2(_ sender: UITapGestureRecognizer){
        is_selected = 2
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = UIImagePickerController.SourceType.camera
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .savedPhotosAlbum;
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true)
        
    }
    
    // chose image license image
    @objc func chooseImage3(_ sender: UITapGestureRecognizer){
        is_selected = 3
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = UIImagePickerController.SourceType.camera
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .savedPhotosAlbum;
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true)
        
    }
    
    // chose image car image
    @objc func chooseImage4(_ sender: UITapGestureRecognizer){
        is_selected = 4
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = UIImagePickerController.SourceType.camera
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                self.imagePicker.delegate = self
                self.imagePicker.sourceType = .savedPhotosAlbum;
                self.imagePicker.allowsEditing = false
                self.present((self.imagePicker)!, animated: true, completion: nil)
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        present(alert, animated: true)
        
    }
    
    
   @objc func getdata(){
    let lon = LocationManager.SharedInstans.getlongitude()
    let lat = LocationManager.SharedInstans.getlatitude()
    let lan = String(lon)
    let lat2 = String(lat)
    
    if lon == 0.0 {
        showAlert(title: "you need to open Gps", messages: nil, message: nil, selfDismissing: true)
        return
    }
    if lat == 0.0 {
        showAlert(title: "you need to open Gps", messages: nil, message: nil, selfDismissing: true)
        return
    }
    let name = mainview.name.text
    let identNum = mainview.Identy.text
    let mail = mainview.mail.text
    let phone = mainview.phone.text
    let adress = mainview.Area.text
    let carnum = mainview.carNumber.text
    let licenum = mainview.license.text
    let carmodel = mainview.carModel.text
    let cartype = mainview.car.text
    
        AuthService.instance.changeprofile(name: name ?? "", identynum: identNum ?? "", email: mail ?? "", phone: phone ?? "", lat: lat2, lan: lan, address: adress ?? "", carnumber: carnum ?? "", licenseNumber: licenum ?? "", carModel: carmodel ?? "", carType: cartype ?? "", image:picked_Image! , image2: picked_Image2!, image3: picked_Image3!, image4: picked_Image4!, image5: picked_Image5!) { (error, status, massg, image) in
            if error == nil {
                if status == true{
                    print("2122222122122222222211122")
                }else{
                    print("nooooooooooooooo")
                }
            }
        }
    }
    



}



extension EditProfileVc : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if is_selected == 1 {
                picked_Image = pickedImage
//                is_selected = 2
                mainview.Identyimg.image = pickedImage
            }else if is_selected == 2 {
                picked_Image2 = pickedImage
                mainview.licenseimg.image = pickedImage
//                is_selected = 3
            }else if is_selected == 3 {
                picked_Image3 = pickedImage
                mainview.applicationimg.image = pickedImage
               
            } else if is_selected == 4 {
                picked_Image4 = pickedImage
                mainview.carphoto.image = pickedImage
                
            }else if is_selected == 5 {
            picked_Image5 = pickedImage
            mainview.personalImage.image = pickedImage
            }
           
            
            //            mainview.viedeoView.image = pickedImage
            //            mainview.viedeoView.contentMode = .scaleToFill
            //            mainview.viedeoView.clipsToBounds = true
            //            mainview.image.isHidden = true
            
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}

