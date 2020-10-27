//
//  File.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/26/20.
//

import UIKit

public protocol ButtonAttributes {
    func title(_ title: String?, for state: UIControl.State) -> Self
    func titleColor(_ color: UIColor?, for state: UIControl.State) -> Self
    func image(_ image: UIImage?, for state: UIControl.State) -> Self
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self
}

extension ButtonAttributes where Self: UIButton {
    @discardableResult
    func title(_ title: String?, for state: UIControl.State) -> Self {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        self.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, for state: UIControl.State) -> Self {
        self.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func attributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        self.setAttributedTitle(title, for: state)
        return self
    }
}
