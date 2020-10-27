//
//  TextFieldAttributes.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/26/20.
//

import UIKit

public protocol TextFieldAttributes {
    func text(_ text: String) -> Self
    func textColor(_ color: UIColor) -> Self
    func font(_ font: UIFont) -> Self
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self
    func placeholder(_ placeholder: String?) -> Self
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self
    func addLeftView(_ view: UIView?, mode: UITextField.ViewMode) -> Self
    func addRightView(_ view: UIView?, mode: UITextField.ViewMode) -> Self
}

public extension TextFieldAttributes where Self: UITextField {
    @discardableResult
    func text(_ text: String) -> Self {
        self.text = text
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor) -> Self {
        self.textColor = color
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        self.textAlignment = textAlignment
        return self
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        self.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        self.borderStyle = borderStyle
        return self
    }
    
    @discardableResult
    func addLeftView(_ view: UIView?, mode: UITextField.ViewMode) -> Self {
        self.leftView = view
        self.leftViewMode = mode
        return self
    }
    
    @discardableResult
    func addRightView(_ view: UIView?, mode: UITextField.ViewMode) -> Self {
        self.rightView = view
        self.rightViewMode = mode
        return self
    }
}
