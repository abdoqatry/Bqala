//
//  UIImage+.swift
//  BaseProject
//
//  Created by Atiaf on 1/29/19.
//  Copyright © 2019 amr. All rights reserved.
//

import UIKit

extension UIImage {
    
    func encodeToBase64(withFormatPrefix prefix: String)-> String {
        return ImageHelper.convertToBase64(img: self, format: prefix)
    }
    
    func encodeToBase64()-> String {
        return ImageHelper.convertToBase64(img: self)
    }
    
}
