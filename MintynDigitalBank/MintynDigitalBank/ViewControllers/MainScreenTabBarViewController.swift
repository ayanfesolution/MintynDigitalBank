//
//  MainScreenTabBarViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class MainScreenTabBarViewController: UITabBarController {
    // MARK: - Properties
    let home = HomePageViewController()
    let settings = SettingsPageViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
