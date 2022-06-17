//
//  SettingsPageViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class SettingsPageViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    let accountSetting = SettingsTimeTableList.getListOfMeal()
    let reusableCell = "settingsPageCell"
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
        settingsTable.separatorStyle = .none
        settingsTable.register(UITableViewCell.self, forCellReuseIdentifier: reusableCell)
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
    private func showNext(scene: UIViewController) {
        scene.modalPresentationStyle = .fullScreen
        present(scene, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accountSetting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let arrowImage = UIImageView(image: UIImage(systemName: "chevron.forward", withConfiguration: config))
        arrowImage.tintColor = UIColor.CustomColor.textColorGray
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath)
        let lists = accountSetting[indexPath.row]
        cell.accessoryView = arrowImage
        cell.imageView?.image = lists.viewImage
        cell.imageView?.tintColor = .lightGray
        cell.textLabel?.text = lists.viewLabel
        cell.textLabel?.textColor = UIColor.CustomColor.textColorGray
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 3 :
            let nextVC = LoginViewController()
            showNext(scene: nextVC)
        case 5 :
            let nextVC = LoginViewController()
            showNext(scene: nextVC)
        case 7 :
            let nextVC = LoginViewController()
            nextVC.navigationBtn.isHidden = true
            showNext(scene: nextVC)
            
        default:
            break
        }
    }
}
