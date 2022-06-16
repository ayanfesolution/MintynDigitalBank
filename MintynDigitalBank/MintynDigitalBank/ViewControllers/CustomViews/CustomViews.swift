//
//  CustomViews.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//
import UIKit
import Foundation

func customAuthButton(text: String) -> UIButton {
    let arrow = UIButton(type: .system)
    arrow.setTitle(text, for: .normal)
    arrow.heightAnchor.constraint(equalToConstant: 60).isActive = true
    arrow.layer.cornerRadius = 5
    arrow.translatesAutoresizingMaskIntoConstraints = false
    return arrow
}

func customBoxButton(text: String, image: String) -> UIButton {
    let boxButton = UIButton(type: .system)
    let config = UIImage.SymbolConfiguration(pointSize: 40)
    boxButton.setTitle(text, for: .normal)
    boxButton.setImage(UIImage(systemName: image, withConfiguration: config), for: .normal)
    boxButton.translatesAutoresizingMaskIntoConstraints = false
    boxButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
    boxButton.widthAnchor.constraint(equalToConstant: 175).isActive = true
    return boxButton
}
