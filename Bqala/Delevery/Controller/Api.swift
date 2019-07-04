//
//  Api.swift
//  Bqala
//
//  Created by Moe on 6/1/19.
//  Copyright © 2019 Moe. All rights reserved.
//


import Foundation
import Alamofire
import SwiftyJSON
import MOLH

extension AuthService{
    
    func creatPhoto(name:String,identynum:String,email:String,phone:String,pass:String,repass:String,lat:String,lan:String,address:String,carnumber:String,licenseNumber:String,carModel:String,carType:String,image : UIImage,image2 : UIImage,image3 : UIImage,image4 : UIImage,completion: @escaping (_ error: Error?,_ status : Bool,_ image : String?,_ massage:String) -> Void){
        
        let Authtoken = AuthService.instance.authToken
        let langue = MOLHLanguage.currentAppleLanguage()
        let header = [
            "Accept" : "application/json",
            "Accept-Language" : langue,
            "Authorization" : "Bearer "+Authtoken!,
            ]
        let parameters  = [
            "identity_number" : identynum,
            "name" : name,
            "email" : email,
            "phone" : phone,
            "password" : pass,
            "password_confirmation" : repass,
            "fcm_token_android" : "123",
            "lat" : lat,
            "lng" : lan,
            "address" : address,
            "car_number" : carnumber,
            "license_number" : licenseNumber,
            "car_model" : carModel,
            "car_type" : carType
            ] as [String : Any]
        let urls = "http://bqala.panorama-q.com/api/auth/register/delivery"
        
         let data = image.jpegData(compressionQuality: 0.5)!
        let data2 = image2.jpegData(compressionQuality: 0.5)!
         let data3 = image3.jpegData(compressionQuality: 0.5)!
         let data4 = image4.jpegData(compressionQuality: 0.5)!
        
        upload(multipartFormData: { (form:MultipartFormData) in
            
                for (key, val) in parameters ?? [:] {
                    form.append("\(val)".data(using: String.Encoding.utf8)!, withName: key as String)
                }
            form.append(data, withName: "identity_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data2, withName: "license_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data3, withName: "image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data4, withName: "car_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            }
            
            
    , usingThreshold: SessionManager.multipartFormDataEncodingMemoryThreshold, to: urls, method: .post, headers: header) {[weak self] (result:SessionManager.MultipartFormDataEncodingResult) in
            switch result {
            case.failure(let error):
                print(error)
                completion(error,false,nil,"check your connection")
                
            case.success(request:let upload, streamingFromDisk: _ , streamFileURL: _ ):
                upload.uploadProgress(closure: { (progrees:Progress) in
                    print(progrees)
                })
                upload.responseJSON(completionHandler: { (response:DataResponse<Any>) in
                    
                    switch response.result
                    {
                    case.failure(let error):
                        print(error)
                        completion(error,false,nil,"check your connection")
                    case.success(let value):
                        let json = JSON(value)
                        print(json)
                        let status = json["value"].bool ?? false
                        let image1 = json["data"]["image"].string ?? ""
                        let mass = json["msg"].string ?? ""
                        
                       if let id = json["data"]["id"].int{
                          self?.userId = id
                        }
                        if let token = json["data"]["token"].string{
                            self?.authToken = token
                        }
                        if let email = json["data"]["email"].string{
                            self?.userEmail = email
                        }
                        if let Image = json["data"]["image"].string{
                            self?.userImage = Image
                        }
                        if let name = json["data"]["name"].string{
                            self?.userName = name
                        }
                        if let phone = json["data"]["phone"].string{
                            self?.userPhone = phone
                        }
                        if let address = json["data"]["address"].string{
                            self?.UserAdrres = address
                        }
                        if let number = json["data"]["car_number"].string{
                            self?.UsercarNumber = number
                        }
                        if let Model = json["data"]["car_model"].string{
                            self?.UsercarModel = Model
                        }
                        if let IdetyNumber = json["data"]["identity_number"].string{
                            self?.UserIdentyNumber = IdetyNumber
                        }
                        if let IdentyImage = json["data"]["identity_image"].string{
                            self?.UserIdentityimage = IdentyImage
                        }
                        if let licencsnumber = json["data"]["license_number"].string{
                            self?.UserLicence = licencsnumber
                        }
                        if let licensImage = json["data"]["license_image"].string{
                            self?.UserLicinecImage = licensImage
                        }
                        if let appliImage = json["data"]["car_form_image"].string{
                            self?.UserapplicatioImage = appliImage
                        }
                        if let cartype = json["data"]["car_type"].string{
                            self?.Usercartype = cartype
                        }
                        if let carimag = json["data"]["car_image"].string{
                            self?.UsercarImage = carimag
                        }
                        
                        
                        completion(nil,status,image1,mass)
                    }
                })
            }
        }
        
    }
    
    
    func changeprofile(name:String,identynum:String,email:String,phone:String,lat:String,lan:String,address:String,carnumber:String,licenseNumber:String,carModel:String,carType:String,image : UIImage,image2 : UIImage,image3 : UIImage,image4 : UIImage,image5:UIImage,completion: @escaping (_ error: Error?,_ status : Bool,_ image : String?,_ massage:String) -> Void){
        
        let Authtoken = AuthService.instance.authToken
        let langue = MOLHLanguage.currentAppleLanguage()
        let header = [
            "Accept" : "application/json",
//            "Accept-Language" : langue,
            "Authorization" : "Bearer "+Authtoken!,
            ]
//        let parameters  = [
//            "identity_number" : identynum,
//            "name" : name,
//            "email" : email,
//            "phone" : phone,
//            "password" : pass,
//            "password_confirmation" : repass,
//            "lat" : lan,
//            "lng" : lat,
//            "address" : address,
//            "car_number" : carnumber,
//            "license_number" : licenseNumber,
//            "car_model" : carModel,
//            "car_type" : carType
//            ] as [String : Any]
        
        
        var parameters  = [ "name": name] as [String : Any]
        if name != nil {
            parameters["name"] = name
        }
        if phone != nil {
            parameters["phone"] = phone
        }
        if email != nil {
            parameters["email"] = email
        }
        if identynum != nil {
            parameters["identity_number"] = identynum
        }
        if lan != nil {
            parameters["lan"] = lan
        }
        if lat != nil {
            parameters["lat"] = lat
        }
        if address != nil {
            parameters["address"] = address
        }
        if carnumber != nil {
            parameters["car_number"] = carnumber
        }
        if licenseNumber != nil {
            parameters["license_number"] = licenseNumber
        }
        if carModel != nil {
            parameters["car_model"] = carModel
        }
        if carType != nil {
            parameters["car_type"] = carType
        }
        
        let urls = "http://bqala.panorama-q.com/api/auth/change-profile"
        
        let data = image.jpegData(compressionQuality: 0.5)!
        let data2 = image2.jpegData(compressionQuality: 0.5)!
        let data3 = image3.jpegData(compressionQuality: 0.5)!
        let data4 = image4.jpegData(compressionQuality: 0.5)!
        let data5 = image5.jpegData(compressionQuality: 0.5)!
        
        upload(multipartFormData: { (form:MultipartFormData) in
            
            for (key, val) in parameters ?? [:] {
                form.append("\(val)".data(using: String.Encoding.utf8)!, withName: key as String)
            }
            form.append(data, withName: "identity_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data2, withName: "license_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data3, withName: "car_form_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data4, withName: "car_image", fileName: "image.jpeg", mimeType: "image/jpeg")
            form.append(data5, withName: "image", fileName: "image.jpeg", mimeType: "image/jpeg")
            
        }
            
            
        , usingThreshold: SessionManager.multipartFormDataEncodingMemoryThreshold, to: urls, method: .post, headers: header) {[weak self] (result:SessionManager.MultipartFormDataEncodingResult) in
            switch result {
            case.failure(let error):
                print(error)
                completion(error,false,nil,"check your connection")
                
            case.success(request:let upload, streamingFromDisk: _ , streamFileURL: _ ):
                upload.uploadProgress(closure: { (progrees:Progress) in
                    print(progrees)
                })
                upload.responseJSON(completionHandler: { (response:DataResponse<Any>) in
                    
                    switch response.result
                    {
                    case.failure(let error):
                        print(error)
                        completion(error,false,nil,"check your connection")
                    case.success(let value):
                        let json = JSON(value)
                        print(json)
                        let status = json["value"].bool ?? false
                        let image1 = json["data"]["image"].string ?? ""
                        let mass = json["msg"].string ?? ""
                        
                        if let id = json["data"]["id"].int{
                            self?.userId = id
                        }
                        if let token = json["data"]["token"].string{
                            self?.authToken = token
                        }
                        if let email = json["data"]["email"].string{
                            self?.userEmail = email
                        }
                        if let Image = json["data"]["image"].string{
                            self?.userImage = Image
                        }
                        if let name = json["data"]["name"].string{
                            self?.userName = name
                        }
                        if let phone = json["data"]["phone"].string{
                            self?.userPhone = phone
                        }
                        if let address = json["data"]["address"].string{
                            self?.UserAdrres = address
                        }
                        if let number = json["data"]["car_number"].string{
                            self?.UsercarNumber = number
                        }
                        if let Model = json["data"]["car_model"].string{
                            self?.UsercarModel = Model
                        }
                        if let IdetyNumber = json["data"]["identity_number"].string{
                            self?.UserIdentyNumber = IdetyNumber
                        }
                        if let IdentyImage = json["data"]["identity_image"].string{
                            self?.UserIdentityimage = IdentyImage
                        }
                        if let licencsnumber = json["data"]["license_number"].string{
                            self?.UserLicence = licencsnumber
                        }
                        if let licensImage = json["data"]["license_image"].string{
                            self?.UserLicinecImage = licensImage
                        }
                        if let appliImage = json["data"]["car_form_image"].string{
                            self?.UserapplicatioImage = appliImage
                        }
                    if let cartype = json["data"]["car_type"].string{
                            self?.Usercartype = cartype
                        }
                        if let carimag = json["data"]["car_image"].string{
                            self?.UsercarImage = carimag
                        }
                        
                        
                        completion(nil,status,image1,mass)
                    }
                })
            }
        }
        
    }
    
    
    
    
    
}


class RatesApi{
    
    class func rates1(id : Int, rate:Int,completion: @escaping (_ error: Error?,_ massage:String,_ status:Bool) -> Void){
        
        let token = AuthService.instance.authToken
        var header = ["X-localization" : "en",
                      "Authorization" : "Bearer "+token! ,
                      //    "Accept" : "application/json"
        ]
        
        let url = "http://bqala.panorama-q.com/api/carts/add-rate"
        let parameter = [
            "value" : rate,
            "cart_id" : id
            ] as [String : Any]
        
        Alamofire.request(url, method: .post, parameters: parameter, encoding: URLEncoding.default, headers: header)
            .responseJSON { response in
                switch response.result
                {
                case .failure(let error):
                    completion(error, "check your connection",false)
                    print(error)
                    return
                case .success(let value):
                    print(value)
                    let json = JSON(value)
                    print(json)
                    let mssg = json["msg"].string ?? ""
                    let status = json["value"].bool ?? false
                    
                    completion(nil,mssg,status)
                    
                }
        }
    }
    
    
   
    
    
    
    
}

