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
