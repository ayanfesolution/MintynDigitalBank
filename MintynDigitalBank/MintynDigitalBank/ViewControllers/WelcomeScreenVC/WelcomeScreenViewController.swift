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
}

