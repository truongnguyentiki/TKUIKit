//
//  ImageViewExtension.swift
//  TKUIKit
//
//  Created by LAP01135 on 5/14/19.
//  Copyright © 2019 TIKI. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    
    public func resizedFitImage(expectedSize: CGSize, isRatioAspectWidth:Bool = true) -> UIImage? {
        let width = self.size.width
        let height = self.size.height
        
        var scaleFactor: CGFloat
        
        if(width < height || isRatioAspectWidth) {
            scaleFactor = expectedSize.width / width
        }
        else {
            scaleFactor = expectedSize.height / height
        }
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: width * scaleFactor, height: height * scaleFactor), false, 0)
        self.draw(in: CGRect(x: 0, y: 0, width: width * scaleFactor, height: height * scaleFactor))
        let resizedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return resizedImage;
    }
    
    func resizeAsFitWithImageView(onImageView: UIImageView, isRatioAspectWidth:Bool = true) -> UIImage? {
        return resizedFitImage(expectedSize: onImageView.frame.size, isRatioAspectWidth:isRatioAspectWidth)
    }
    
}
