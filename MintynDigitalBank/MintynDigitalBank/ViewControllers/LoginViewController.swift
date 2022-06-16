//
//  LoginViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    //  Navigation Button
    lazy var navigationBtn: UIButton = {
        let navBtn = UIButton()
        navBtn.translatesAutoresizingMaskIntoConstraints = false
        navBtn.setImage(UIImage(systemName: "chevron.backward"), for: .normal)
        navBtn.addTarget(self, action: #selector(returnHome), for: .touchUpInside)
        return navBtn
    }()
    // Header Title
    lazy var navTitleHeader: UILabel = {
        let navTitle = UILabel()
        navTitle.translatesAutoresizingMaskIntoConstraints = false
        navTitle.text = "Welcome"
        navTitle.textColor = .white
        navTitle.font = customFont(font: .timesNewRomanBold, size: 20)
        return navTitle
    }()
    // openAnAccountButton
    lazy var mintnyInsuranceButton: UIButton = {
        let button = customBoxButton(text: "  Mintny \n  Insurance", image: "checkerboard.shield")
        button.titleLabel?.textAlignment = .left
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 18)
        button.backgroundColor = UIColor.CustomColor.boxDarkColor
        return button
    }()
    // openAnAccountButton
    lazy var openAnAccountButton: UIButton = {
        let button = customBoxButton(text: "  Open an \n  account", image: "checkerboard.shield")
        button.titleLabel?.numberOfLines = 0
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.titleLabel?.textAlignment = .left
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 22)
        button.backgroundColor = UIColor.CustomColor.boxDarkColor
        return button
    }()
    // businessRegistrationButton
    lazy var businessRegistrationButton: UIButton = {
        let button = customBoxButton(text: "  Register \n  your Business", image: "checkerboard.shield")
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textAlignment = .left
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 16)
        button.backgroundColor = UIColor.CustomColor.boxDarkColor
        return button
    }()
    // contactSupportButton
    lazy var contactSupportButton: UIButton = {
        let button = customBoxButton(text: "  Contact \n  Support", image: "checkerboard.shield")
        button.titleLabel?.numberOfLines = 0
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.titleLabel?.textAlignment = .left
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 22)
        button.backgroundColor = UIColor.CustomColor.boxDarkColor
        return button
    }()
    // upperHorizonatalStackView
    lazy var upperHorizonatalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(mintnyInsuranceButton)
        stackView.addArrangedSubview(openAnAccountButton)
        return stackView
    }()
    // lowerHorizonatalStackView
    lazy var lowerHorizonatalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(businessRegistrationButton)
        stackView.addArrangedSubview(contactSupportButton)
        return stackView
    }()
    // bottomUIView
    lazy var bottomUIView: UIView = {
        let bottomView = UIView()
        bottomView.backgroundColor = UIColor.CustomColor.boxLightDarkColor
        bottomView.layer.cornerRadius = 40
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        return bottomView
    }()
    // versionLabel
    lazy var versionLabel: UILabel = {
       let version = UILabel()
        version.text = "Version 1.2.70"
        version.translatesAutoresizingMaskIntoConstraints = false
        version.textColor = .white
        version.textAlignment = .center
        version.font = UIFont.systemFont(ofSize: 15)
        return version
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPView()
        navigationItem.hidesBackButton = true
        
    }
    @objc func returnHome() {
        dismiss(animated: true)
    }
    func setUPView() {
        let uiViews = [upperHorizonatalStackView,lowerHorizonatalStackView, bottomUIView, navTitleHeader, navigationBtn]
        for uiView in uiViews {
            view.addSubview(uiView)
        }
        let items = [versionLabel]
        for item in items {
            bottomUIView.addSubview(item)
        }
       
        
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            //  Navigation Button
            navigationBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            navigationBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            // MARK: - The Header
            navTitleHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navTitleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // constraints for upperHorizonatalStackView
            upperHorizonatalStackView.topAnchor.constraint(equalTo: navTitleHeader.topAnchor, constant: 16),
            upperHorizonatalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            upperHorizonatalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            // constraints for lowerHorizonatalStackView
            lowerHorizonatalStackView.topAnchor.constraint(equalTo: upperHorizonatalStackView.bottomAnchor, constant: 16),
            lowerHorizonatalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            lowerHorizonatalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            // Constraints for bottomView
            bottomUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
            bottomUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -2),
            bottomUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomUIView.topAnchor.constraint(equalTo: lowerHorizonatalStackView.bottomAnchor, constant: 50),
        ])
    }
}
