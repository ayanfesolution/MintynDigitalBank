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
    
}
