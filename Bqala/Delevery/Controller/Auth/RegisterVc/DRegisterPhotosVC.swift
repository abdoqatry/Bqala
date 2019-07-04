//
//  DRegisterPhotosVC.swift
//  Bqala
//
//  Created by Moe on 5/26/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class DRegisterPhotosVC: BaseController {
    
    var mainView : DRegisterPhotosView!{
        return view as? DRegisterPhotosView
    }

    var name1 = ""
    var phone1 = ""
    var email1 = ""
    var place1 = ""
    var paasword1 = ""
    var kind = ""
    var number = ""
    var model = ""
    var identy = ""
    var licences = ""
    var lat = ""
    var lon = ""
    
     var imagePicker: UIImagePickerController!
    private var is_selected = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        view = DRegisterPhotosView()
        settarget()
        imagePicker = UIImagePickerController()
        mainView.userImage.isUserInteractionEnabled = true
        mainView.lincesImage.isUserInteractionEnabled = true
        mainView.reportImage.isUserInteractionEnabled = true
        mainView.carImage.isUserInteractionEnabled = true
        
         mainView.userImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
         mainView.lincesImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
         mainView.reportImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
         mainView.carImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        navigationController?.navigationBar.tintColor = .black
        
    }
    
    var picked_Image : UIImage?
    var picked_Image2 : UIImage?
    var picked_Image3 : UIImage?
    var picked_Image4 : UIImage?
    
    
    // chose image
    @objc func chooseImage(_ sender: UITapGestureRecognizer){
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
    
   @objc func handelapi(){
    guard let image = picked_Image  else{
        showAlert(title: "please pick image one", messages: nil, message: nil, selfDismissing: false)
  return  }
    guard let image2 = picked_Image2 else{
        showAlert(title: "please pick image 2", messages: nil, message: nil, selfDismissing: false)
        return  }
    
    guard  let image3 = picked_Image3 else{
        showAlert(title: "please pick image 2", messages: nil, message: nil, selfDismissing: false)
        return  }
    guard   let image4 = picked_Image4 else{
        showAlert(title: "please pick image 2", messages: nil, message: nil, selfDismissing: false)
        return  }
    
        SVProgressHUD.show()
    AuthService.instance.creatPhoto(name: name1, identynum:identy, email: email1, phone: phone1, pass: paasword1, repass: paasword1, lat:"23", lan: "23", address: place1, carnumber: number, licenseNumber: licences, carModel: model, carType: kind, image: image, image2: image2, image3: image3, image4: image4) { [weak self](error, status, massage, image) in
       
            if error == nil{
                SVProgressHUD.dismiss()
                if status == true{
                    SVProgressHUD.dismiss()
                    self?.navigationController?.pushViewController(DConfirmRegisterVC(), animated: true)
                }
               
            }else{
                SVProgressHUD.dismiss()
                self?.showAlert(title: massage!, messages: nil, message:nil , selfDismissing: false)
            }
        }
     
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
        mainView.NextButton.addTarget(self, action: #selector(handelapi), for: .touchUpInside)
    }


}

extension DRegisterPhotosVC : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            if is_selected == 1 {
                picked_Image = pickedImage
                is_selected = 2
                mainView.userImage.image = pickedImage
            }else if is_selected == 2 {
                picked_Image2 = pickedImage
                mainView.lincesImage.image = pickedImage
                is_selected = 3
            }else if is_selected == 3 {
                picked_Image3 = pickedImage
                mainView.reportImage.image = pickedImage
                is_selected = 4
            }else {
                picked_Image4 = pickedImage
                mainView.carImage.image = pickedImage
                is_selected = 1
            }
            
            
            //            mainview.viedeoView.image = pickedImage
            //            mainview.viedeoView.contentMode = .scaleToFill
            //            mainview.viedeoView.clipsToBounds = true
            //            mainview.image.isHidden = true
            
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}
