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
    let config = UIImage.SymbolConfiguration(pointSize: 35)
    boxButton.setTitle(text, for: .normal)
    boxButton.setImage(UIImage(systemName: image, withConfiguration: config), for: .normal)
    boxButton.layer.cornerRadius = 8
    boxButton.translatesAutoresizingMaskIntoConstraints = false
    boxButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
    boxButton.widthAnchor.constraint(equalToConstant: 175).isActive = true
    return boxButton
}

func customfeaturesButton(text: String, image: String) -> UIView {
    
    
    lazy var boxButton: UIStackView = {
        let boxButton = UIStackView()
        boxButton.axis = .vertical
        boxButton.alignment = .center
        boxButton.translatesAutoresizingMaskIntoConstraints = false
        let button = UIButton(type: .system)
        boxButton.addArrangedSubview(button)
        let config = UIImage.SymbolConfiguration(pointSize: 25)
        button.setImage(UIImage(systemName: image, withConfiguration: config), for: .normal)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 75).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        let actionsText = UILabel()
        actionsText.text = text
        actionsText.textColor = UIColor.CustomColor.textColorGray
        actionsText.numberOfLines = 0
        actionsText.translatesAutoresizingMaskIntoConstraints = false
        boxButton.addArrangedSubview(actionsText)
        return boxButton
    }()
    return boxButton
}


