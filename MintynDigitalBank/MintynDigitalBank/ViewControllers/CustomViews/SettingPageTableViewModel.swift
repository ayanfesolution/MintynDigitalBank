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
    static func getListOfMeal() -> [SettingsList] {
        let list = [
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Profile"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Account Management"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Referrals"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Legal"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Help and Support"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "System"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Create Business Account"),
            SettingsList(viewImage: UIImage(systemName: "")!, viewLabel: "Logout")
        ]
        return list
    }
}
