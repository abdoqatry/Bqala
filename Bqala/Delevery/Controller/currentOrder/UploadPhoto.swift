//
//  UploadPhoto.swift
//  Bqala
//
//  Created by Moe on 6/17/19.
//  Copyright © 2019 Moe. All rights reserved.
//

import UIKit
import SVProgressHUD

class UploadPhoto: UIViewController {
    
    var mainview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.7172784675)
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
  
    var contantview : UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var titlelabel : UILabel = {
       let label = UILabel()
        label.text = "upload order photo"
        label.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var licenseimg : UIImageView = {
        let label = UIImageView()
        label.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.layer.applySketchShadow()
        label.layer.borderWidth = 0.5
        label.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var OkButt : UIButton = {
        let butt = UIButton()
        butt.setTitle("confirm".localize, for: .normal)
        butt.setTitleColor(.black, for: .normal)
        butt.backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        
        butt.translatesAutoresizingMaskIntoConstraints = false
        return butt
    }()
    
    var id = 0
    var payed = 0
    
     var imagePicker: UIImagePickerController!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
         imagePicker = UIImagePickerController()
        setview()
        mainview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.diss)))
        licenseimg.isUserInteractionEnabled = true
        licenseimg.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.chooseImage(_:))))
        OkButt.addTarget(self, action: #selector(Confirm), for: .touchUpInside)
        
    }
    
    var picked_Image : UIImage?
    
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
    
    @objc func diss(){
        SVProgressHUD.dismiss()
        dismiss(animated: true, completion: nil)
    }
    
    var data2 : Ofer?
    
    
    @objc func Confirm(){
        guard let img = picked_Image, let imgData = img.jpegData(compressionQuality: 0.5) else { return }
        
        SVProgressHUD.show()
        let url = "http://bqala.panorama-q.com/api/delivery/finish"
        let parameter = [
            "cart_id" : id,
            "payed" : payed
            ] as [String : Any]
        let imageData = UploadData(data: imgData, fileName: "image.jpeg", mimeType: "image/jpeg", name: "order_image")
        
        Network.shared.uploadToServerWith(Ofer.self, data: imageData, url: url, method: .post, parameters: parameter, progress: nil) {[weak self] (err, data) in
             SVProgressHUD.dismiss()
            if let err = err {
                self?.showAlert(title: nil, message: err)
            } else if let data = data {
                if data.value == true {
                    self?.dismiss(animated: true, completion: nil)
                }
                }
            }

        }
    
    
    
    func setview(){
        view.addSubview(mainview)
        NSLayoutConstraint.activate([
            mainview.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mainview.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mainview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mainview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
            ])
        view.addSubview(contantview)
        NSLayoutConstraint.activate([
//            contantview.bottomAnchor.constraint(equalTo: mainview.bottomAnchor, constant: 0),
            contantview.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0),
            contantview.leadingAnchor.constraint(equalTo: mainview.leadingAnchor, constant: 0),
            contantview.trailingAnchor.constraint(equalTo: mainview.trailingAnchor, constant: 0),
            contantview.heightAnchor.constraint(equalToConstant: 200),
            
            ])
        contantview.addSubview(titlelabel)
        NSLayoutConstraint.activate([
            titlelabel.topAnchor.constraint(equalTo: contantview.topAnchor, constant: 60),
            titlelabel.leadingAnchor.constraint(equalTo: contantview.leadingAnchor, constant: 20),
            titlelabel.heightAnchor.constraint(equalToConstant: 20)
            ])
        contantview.addSubview(licenseimg)
        NSLayoutConstraint.activate([
            licenseimg.topAnchor.constraint(equalTo: titlelabel.topAnchor, constant: 0),
            licenseimg.leadingAnchor.constraint(equalTo: titlelabel.trailingAnchor, constant: 20),
            licenseimg.heightAnchor.constraint(equalToConstant: 60),
            licenseimg.widthAnchor.constraint(equalToConstant: 60)
            ])
        contantview.addSubview(OkButt)
        NSLayoutConstraint.activate([
            OkButt.bottomAnchor.constraint(equalTo: contantview.bottomAnchor, constant: 0),
            OkButt.trailingAnchor.constraint(equalTo: contantview.trailingAnchor, constant: 0),
            OkButt.heightAnchor.constraint(equalToConstant: 40),
            OkButt.leadingAnchor.constraint(equalTo: contantview.leadingAnchor, constant: 0)
            ])
        
        
    }
    

   

}



extension UploadPhoto : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
           
                picked_Image = pickedImage
            licenseimg.image = pickedImage
            
            
            
            //            mainview.viedeoView.image = pickedImage
            //            mainview.viedeoView.contentMode = .scaleToFill
            //            mainview.viedeoView.clipsToBounds = true
            //            mainview.image.isHidden = true
            
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    
    
}

