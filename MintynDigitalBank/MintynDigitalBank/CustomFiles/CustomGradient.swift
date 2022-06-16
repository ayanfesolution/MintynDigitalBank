//
//  CustomColors.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//
import UIKit
import Foundation

public func primaryGradientColor(uiButton: UIButton) -> CAGradientLayer {
    lazy var gradient: CAGradientLayer = {
        let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.frame.size = uiButton.frame.size
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        gradient.colors = [
            UIColor(cgColor: CGColor(red: 195, green: 150, blue: 57, alpha: 1)),
            UIColor(cgColor: CGColor(red: 164, green: 121, blue: 154, alpha: 1)),
            UIColor(cgColor: CGColor(red: 129, green: 89, blue: 48, alpha: 1))
        ]
        gradient.locations = [0, 0.25, 1]
        return gradient
    }()
    return gradient
}
