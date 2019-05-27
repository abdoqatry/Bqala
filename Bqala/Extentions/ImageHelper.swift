//
//  ImageHelper.swift
//  BaseProject
//
//  Created by Atiaf on 1/29/19.
//  Copyright © 2019 amr. All rights reserved.
//

import UIKit

class ImageHelper {
    
    static func convertToBase64(img: UIImage, format: String)-> String {
        var imageData: Data!
        switch format {
        case "jpg":
            imageData = img.jpegData(compressionQuality: 1.0)//UIImage.JPEGRepresentation(img,1)
        case "jpeg":
            imageData = img.jpegData(compressionQuality: 1.0)//UIImageJPEGRepresentation(img,1)
        case "png":
            imageData = img.pngData()//(compressionQuality: 1.0)//UIImagePNGRepresentation(img)
        default:
            return ""
        }
        
        let strBase64 = imageData.base64EncodedString(options: .lineLength64Characters)
        return "\(format),\(strBase64)"
    }
    
    static func convertToBase64(img: UIImage)-> String {
        let imageData = img.pngData()//UIImagePNGRepresentation(img)
        let strBase64 = imageData?.base64EncodedString(options: .lineLength64Characters)
        return strBase64 ?? ""
    }
    
}
