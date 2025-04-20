//
//  Utility.swift
//  A252QRCode
//
//  Created by 申潤五 on 2025/4/20.
//

import Foundation
import UIKit
func generrateQRCode(from string:String,size:CGSize) -> UIImage? {
    let data = string.data(using: .utf8)
    if let filter = CIFilter(name: "CIQRCodeGenerator"){
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("H", forKey: "inputCorrectionLevel")
        var scaleX:CGFloat = 0
        var scaleY:CGFloat = 0
        if let orgSize = filter.outputImage?.extent.size{
            scaleX = size.width / orgSize.width
            scaleY = size.height / orgSize.height
        }
        let transform = CGAffineTransform(scaleX: scaleX, y: scaleY)
        if let outputImage = filter.outputImage?.transformed(by: transform){
            if let data = UIImage(ciImage: outputImage).pngData(){
                return UIImage(data: data)
            }
        }
    }
    return nil
}

