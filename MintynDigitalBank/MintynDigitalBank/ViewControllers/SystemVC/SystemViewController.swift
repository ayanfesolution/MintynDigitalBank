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
        view.backgroundColor = .systemBackground
        setUPView()
    }
    @objc func dismissTheView() {
        dismiss(animated: true)
    }
}
