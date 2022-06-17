//
//  SettingsPageViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class SettingsPageViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    // Header Title
    lazy var navTitleHeader: UILabel = {
        let navTitle = UILabel()
        navTitle.translatesAutoresizingMaskIntoConstraints = false
        navTitle.text = "Settings"
        navTitle.textColor = UIColor.CustomColor.textColorGray
        navTitle.font = customFont(font: .robotoBlack, size: 24)
        return navTitle
    }()
    lazy var settingListTableView: UITableView = {
        let settingsTable = UITableView()
        settingsTable.translatesAutoresizingMaskIntoConstraints = false
        settingsTable.delegate = self
        settingsTable.dataSource = self
        return settingsTable
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpViews()
    }
    func setUpViews() {
        let items = [navTitleHeader, settingListTableView]
        for item in items {
            view.addSubview(item)
        }
        
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            // constraints for Header
            navTitleHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
            navTitleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // constraints for settingListTableView
            settingListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            settingListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            settingListTableView.topAnchor.constraint(equalTo: navTitleHeader.bottomAnchor, constant: 20),
            settingListTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension SettingsPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
