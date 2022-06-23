//
//  SettingPageTableViewModel.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//
import UIKit
import Foundation

struct SettingsList {
    var viewImage: UIImage
    var viewLabel: String
}

struct SettingsTimeTableList {
    static func getListOfSettingsTable() -> [SettingsList] {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let list = [
            SettingsList(viewImage: UIImage(systemName: "person", withConfiguration: config)!, viewLabel: "Profile"),
            SettingsList(viewImage: UIImage(systemName: "creditcard", withConfiguration: config)!, viewLabel: "Account Management"),
            SettingsList(viewImage: UIImage(systemName: "megaphone", withConfiguration: config)!, viewLabel: "Referrals"),
            SettingsList(viewImage: UIImage(systemName: "shield", withConfiguration: config)!, viewLabel: "Legal"),
            SettingsList(viewImage: UIImage(systemName: "square.and.pencil", withConfiguration: config)!, viewLabel: "Help and Support"),
            SettingsList(viewImage: UIImage(systemName: "iphone.smartbatterycase.gen2", withConfiguration: config)!, viewLabel: "System"),
            SettingsList(viewImage: UIImage(systemName: "arrow.2.squarepath", withConfiguration: config)!, viewLabel: "Create Business Account"),
            SettingsList(viewImage: UIImage(systemName: "rectangle.portrait.and.arrow.right", withConfiguration: config)!, viewLabel: "Logout")
        ]
        return list
    }
}
