//
//  SystemViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class SystemViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    let reusableCell = "systemPageCell"
    var legalData = ["Default", "Light Mode", "Dark Mode"]
    //  Navigation Button
    lazy var navigationBtn: UIButton = {
        let navBtn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: UIImage.SymbolWeight.bold)
        navBtn.translatesAutoresizingMaskIntoConstraints = false
        navBtn.setImage(UIImage(systemName: "chevron.backward", withConfiguration: config), for: .normal)
        navBtn.addTarget(self, action: #selector(dismissTheView), for: .touchUpInside)
        return navBtn
    }()
    // Header Title
    lazy var navTitleHeader: UILabel = {
        let navTitle = UILabel()
        navTitle.translatesAutoresizingMaskIntoConstraints = false
        navTitle.text = "System"
        navTitle.textColor = UIColor.CustomColor.textColorGray
        navTitle.font = customFont(font: .robotoBlack, size: 24)
        return navTitle
    }()
    lazy var systemListTableView: UITableView = {
        let systemListTableView = UITableView()
        systemListTableView.translatesAutoresizingMaskIntoConstraints = false
        systemListTableView.delegate = self
        systemListTableView.dataSource = self
        systemListTableView.separatorStyle = .none
        systemListTableView.register(UITableViewCell.self, forCellReuseIdentifier: reusableCell)
        return systemListTableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUPView()
    }
    @objc func dismissTheView() {
        dismiss(animated: true)
    }
    func setUPView() {
        let uiViews = [navTitleHeader, navigationBtn, systemListTableView]
        for uiView in uiViews {
            view.addSubview(uiView)
        }
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            //  constraints for Navigation Button
            navigationBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            navigationBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 5),
            // constraints for Header
            navTitleHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            navTitleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // constraints for settingListTableView
            systemListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            systemListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            systemListTableView.topAnchor.constraint(equalTo: navTitleHeader.bottomAnchor, constant: 15),
            systemListTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }
}

extension SystemViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return legalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let arrowImage = UIImageView(image: UIImage(systemName: "square.and.arrow.up.trianglebadge.exclamationmark", withConfiguration: config))
        arrowImage.tintColor = UIColor.CustomColor.textColorGray
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath)
        let lists = legalData[indexPath.row]
        cell.textLabel?.text = lists
        cell.textLabel?.textColor = UIColor.CustomColor.textColorGray
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Appearance"
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        systemListTableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        switch indexPath.row {
        case 0:
            UIApplication.shared.windows.forEach { windowSence in
                windowSence.overrideUserInterfaceStyle = .unspecified
            }
        case 1:
            UIApplication.shared.windows.forEach { windowSence in
                windowSence.overrideUserInterfaceStyle = .light
            }
        case 2:
            UIApplication.shared.windows.forEach { windowSence in
                windowSence.overrideUserInterfaceStyle = .dark
            }
        default:
            return
        }
    
}
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        systemListTableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
}
