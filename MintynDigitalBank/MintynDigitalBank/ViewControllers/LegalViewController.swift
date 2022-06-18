//
//  LegalViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class LegalViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    let reusableCell = "legalPageCell"
    let legalData = ["Mintyn Account- Terms & Conditions", "Mintyn Privacy Policy", "Saving Goals- Terms & Conditions"]
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
        navTitle.text = "Legal"
        navTitle.textColor = UIColor.CustomColor.textColorGray
        navTitle.font = customFont(font: .robotoBlack, size: 24)
        return navTitle
    }()
    lazy var legalListTableView: UITableView = {
        let legalListTableView = UITableView()
        legalListTableView.translatesAutoresizingMaskIntoConstraints = false
        legalListTableView.delegate = self
        legalListTableView.dataSource = self
        legalListTableView.separatorStyle = .none
        legalListTableView.register(UITableViewCell.self, forCellReuseIdentifier: reusableCell)
        return legalListTableView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUPView()
    }
    @objc func dismissTheView() {
        dismiss(animated: true)
    }
    func setUPView() {
        let uiViews = [navTitleHeader, navigationBtn, legalListTableView]
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
            legalListTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 12),
            legalListTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -12),
            legalListTableView.topAnchor.constraint(equalTo: navTitleHeader.bottomAnchor, constant: 15),
            legalListTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            ])
    }
}

extension LegalViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return legalData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let config = UIImage.SymbolConfiguration(pointSize: 20, weight: .bold)
        let arrowImage = UIImageView(image: UIImage(systemName: "square.and.arrow.up.trianglebadge.exclamationmark", withConfiguration: config))
        arrowImage.tintColor = UIColor.CustomColor.textColorGray
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableCell, for: indexPath)
        let lists = legalData[indexPath.row]
        cell.accessoryView = arrowImage
        cell.textLabel?.text = lists
        cell.textLabel?.textColor = UIColor.CustomColor.textColorGray
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
