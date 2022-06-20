//
//  SettingsPageVC+Extension.swift
//  MintynDigitalBank
//
//  Created by Decagon on 20/06/2022.
//
import UIKit
import Foundation

extension SettingsPageViewController {
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
        show(scene, sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let arrowImage = UIImageView(image: UIImage(systemName: "chevron.forward", withConfiguration: config))
        arrowImage.tintColor = UIColor.CustomColor.textColorGray
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath)
        let lists = settingsData[indexPath.row]
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
            let nextVC = LegalViewController()
            showNext(scene: nextVC)
        case 5 :
            let nextVC = SystemViewController()
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
