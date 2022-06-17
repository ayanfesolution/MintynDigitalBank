//
//  ViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    
    // LogoImage
    lazy var logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.heightAnchor.constraint(equalToConstant: 150).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logo.image = UIImage(named: "welcomelogo")
        return logo
    }()
    // bottomUIView
    lazy var bottomUIView: UIView = {
        let bottomView = UIView()
        bottomView.backgroundColor = UIColor.CustomColor.boxLightDarkColor
        bottomView.layer.cornerRadius = 40
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        return bottomView
    }()
    // welcomeTextLabel
    lazy var welcomeTextLabel: UILabel = {
       let welcome = UILabel()
        welcome.text = "Welcome to \n Mintyn Digital Bank"
        welcome.translatesAutoresizingMaskIntoConstraints = false
        welcome.textColor = .white
        welcome.textAlignment = .center
        welcome.numberOfLines = 0

        welcome.font = customFont(font: .robotoBold , size: 27)
        return welcome
    }()
    // descriptionWelcomeTextLabel
    lazy var descriptionWelcomeTextLabel: UILabel = {
       let description = UILabel()
        description.text = "Get started with the bank that puts you in control."
        description.translatesAutoresizingMaskIntoConstraints = false
        description.textColor = .white
        description.textAlignment = .center
        description.numberOfLines = 0
        description.font = customFont(font: .timesNewRoman, size: 20)
        return description
    }()
    // loginButton
    lazy var loginButton: UIButton = {
       let button = customAuthButton(text: "Login")
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 16)
        button.backgroundColor = UIColor.CustomColor.primaryGoldColor
        button.addTarget(self, action: #selector(nextScreen), for: .touchUpInside)
        return button
    }()
    // createAccountButton
    lazy var createAccountButton: UIButton = {
        let button = customAuthButton(text: "Create Acoount")
        button.setTitleColor(UIColor.CustomColor.tabBarIconColorActive, for: .normal)
         button.titleLabel?.font = customFont(font: .robotoBlack, size: 16)
        button.backgroundColor = UIColor.clear
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.CustomColor.tabBarIconColorActive.cgColor
         return button
    }()
    // versionLabel
    lazy var versionLabel: UILabel = {
       let version = UILabel()
        version.text = "Mintyn Version 1.2.70"
        version.translatesAutoresizingMaskIntoConstraints = false
        version.textColor = .white
        version.textAlignment = .center
        version.font = UIFont.systemFont(ofSize: 15)
        return version
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setUPView()
    }
    @objc func nextScreen() {
        let nextVc = LoginViewController()
        nextVc.modalPresentationStyle = .fullScreen
        present(nextVc, animated: true)
    }
    
    func setUPView() {
        let uiViews = [logoImageView, bottomUIView]
        for uiView in uiViews {
            view.addSubview(uiView)
        }
        let items = [welcomeTextLabel, descriptionWelcomeTextLabel, loginButton, createAccountButton, versionLabel]
        for item in items {
            bottomUIView.addSubview(item)
        }
        
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            // Constraints for logoImageView
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            // Constraints for bottomView
            bottomUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            bottomUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1),
            bottomUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomUIView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
            // Constriants for welcomeTextLabel
            welcomeTextLabel.topAnchor.constraint(equalTo: bottomUIView.topAnchor, constant: 80),
            welcomeTextLabel.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 70),
            welcomeTextLabel.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -70),
            // Constriants for descriptionWelcomeTextLabel
            descriptionWelcomeTextLabel.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 5),
            descriptionWelcomeTextLabel.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 35),
            descriptionWelcomeTextLabel.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -35),
            // Constriants for loginButton
            loginButton.topAnchor.constraint(equalTo: descriptionWelcomeTextLabel.bottomAnchor, constant: 35),
            loginButton.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // constraints for createAccountButton
            createAccountButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 15),
            createAccountButton.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            createAccountButton.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // constraints for versionLabel
            versionLabel.bottomAnchor.constraint(equalTo: bottomUIView.safeAreaLayoutGuide.bottomAnchor, constant: -16),
            versionLabel.centerXAnchor.constraint(equalTo: bottomUIView.centerXAnchor)
        ])  
    }
}

