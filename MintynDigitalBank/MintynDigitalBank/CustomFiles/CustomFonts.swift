//
//  CustomFonts.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//
import UIKit
import Foundation

enum CustomFontFamily: String {
    case timesNewRomanBoldItalics = "times new roman bold italic"
    case timesNewRomanItalic = "times new roman italic"
    case timesNewRoman = "times new roman"
    case timesNewRomanBold = "ttimes new roman bold"
    case robotoMedium = "Roboto-Medium"
    case robotoLight = "Roboto-Light"
    case robotoRegular = "Roboto-Regular"
    case robotoMediumItalic = "Roboto-MediumItalic"
    case robotoThinItalic = "Roboto-ThinItalic"
    case robotoBoldItalic = "Roboto-BoldItalic"
    case robotoLightItalic = "Roboto-LightItalic"
    case robotoItalic = "Roboto-Italic"
    case robotoBlackItalic = "Roboto-BlackItalic"
    case robotoBold = "Roboto-Bold"
    case robotoThin = "Roboto-Thin"
    case robotoBlack = "Roboto-Black"
}

func customFont(font: CustomFontFamily, size: CGFloat) -> UIFont {
    guard let customFont = UIFont(name: font.rawValue, size: size) else {
        return UIFont.systemFont(ofSize: size)
    }
    return customFont
}
