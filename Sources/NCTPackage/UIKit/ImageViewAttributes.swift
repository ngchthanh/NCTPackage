//
//  ImageViewAttributes.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/27/20.
//

import UIKit

public protocol ImageViewAttributes {
    func image(_ image: UIImage, tintColor color: UIColor?) -> Self
    func contentMode(_ mode: UIView.ContentMode) -> Self
}

extension ImageViewAttributes where Self: UIImageView {
    @discardableResult
    func image(_ image: UIImage, tintColor color: UIColor? = nil) -> Self {
        if let color = color {
            self.tintColor = color
            self.image = image.withRenderingMode(.alwaysTemplate)
        } else {
            self.image = image
        }
        return self
    }
    
    @discardableResult
    func contentMode(_ mode: UIView.ContentMode) -> Self {
        self.contentMode = mode
        return self
    }
}
