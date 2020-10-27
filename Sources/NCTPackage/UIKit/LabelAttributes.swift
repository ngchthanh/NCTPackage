//
//  LabelAttributes.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/26/20.
//

import UIKit

public protocol LabelAttributes {
    func text(_ text: String?) -> Self
    func textColor(_ color: UIColor) -> Self
    func font(_ font: UIFont) -> Self
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self
    func numberOfLines(_ numberOfLines: Int) -> Self
    func attributedText(_ attributedText: NSAttributedString?) -> Self
}

extension LabelAttributes where Self: UILabel {
    @discardableResult
    func text(_ text: String?) -> Self {
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
    func numberOfLines(_ numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        self.attributedText = attributedText
        return self
    }
}
