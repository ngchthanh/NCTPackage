//
//  StackViewAttributes.swift
//  
//
//  Created by Nguyen Chi Thanh on 10/27/20.
//

import UIKit

public protocol StackViewAttributes {
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self
    func distribution(_ distribution: UIStackView.Distribution) -> Self
    func alignment(_ alignment: UIStackView.Alignment) -> Self
    func margins(_ margins: UIEdgeInsets) -> Self
    func background(_ view: UIView) -> Self
}

extension StackViewAttributes where Self: UIStackView {
    @discardableResult
    func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }
    
    @discardableResult
    func distribution(_ distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        self.alignment
        return self
    }
    
    @discardableResult
    func alignment(_ alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }
    
    @discardableResult
    func margins(_ margins: UIEdgeInsets) -> Self {
        self.isLayoutMarginsRelativeArrangement = true
        self.layoutMargins = margins
        return self
    }
    
    @discardableResult
    func background(_ view: UIView) -> Self {
        self.insertSubview(view, at: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor),
            view.bottomAnchor.constraint(equalTo: bottomAnchor),
            view.leadingAnchor.constraint(equalTo: leadingAnchor),
            view.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        return self
    }
}
