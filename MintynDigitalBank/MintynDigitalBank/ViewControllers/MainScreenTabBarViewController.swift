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
        setupTabBarViews()
    }
    
    func setupTabBarViews() {
        tabBar.tintColor = UIColor.CustomColor.tabBarIconColorActive
        tabBar.unselectedItemTintColor = UIColor.CustomColor.tabBarIconColorNotActive
        tabBar.layer.shadowColor = UIColor.white.cgColor
        tabBar.layer.shadowOpacity = 0
        tabBar.layer.shadowRadius = 0
        tabBar.clipsToBounds = false
        tabBar.backgroundColor = .systemBackground
        home.title = "Home"
        settings.title = "Settings"
        setViewControllers([home, settings], animated: false)
        guard let items = tabBar.items else { return }
        let tabBarIcons = ["house.fill", "gearshape.fill"]
        for icon in 0 ..< items.count {
            items[icon].image = UIImage(systemName: tabBarIcons[icon])
        }
    }

}
