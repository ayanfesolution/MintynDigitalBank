//
//  LoginViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 16/06/2022.
//

import UIKit

class LoginViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    let network = NetworkManager.shared
    //  Navigation Button
    lazy var navigationBtn: UIButton = {
        let navBtn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: UIImage.SymbolWeight.bold)
        navBtn.translatesAutoresizingMaskIntoConstraints = false
        navBtn.setImage(UIImage(systemName: "chevron.backward", withConfiguration: config), for: .normal)
        navBtn.addTarget(self, action: #selector(returnHome), for: .touchUpInside)
        return navBtn
    }()
    // Header Title
    lazy var navTitleHeader: UILabel = {
        let navTitle = UILabel()
        navTitle.translatesAutoresizingMaskIntoConstraints = false
        navTitle.text = "Welcome"
        navTitle.textColor = .white
        navTitle.font = customFont(font: .robotoBlack, size: 24)
        return navTitle
    }()
    // mintnyInsuranceButton
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
        button.titleLabel?.font = customFont(font: .robotoRegular, size: 20)
        button.backgroundColor = UIColor.CustomColor.boxDarkColor
        return button
    }()
    // businessRegistrationButton
    lazy var businessRegistrationButton: UIButton = {
        let button = customBoxButton(text: "  Register \n  your Business", image: "newspaper")
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
        let button = customBoxButton(text: "  Contact \n  Support", image: "iphone.homebutton.radiowaves.left.and.right")
        button.titleLabel?.numberOfLines = 0
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.titleLabel?.textAlignment = .left
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoRegular, size: 20)
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
    // phoneNumberLabel
    lazy var phoneNumberLabel: UILabel = {
        let phoneNumber = UILabel()
        phoneNumber.text = "Phone Number"
        phoneNumber.translatesAutoresizingMaskIntoConstraints = false
        phoneNumber.textColor = .white
        phoneNumber.textAlignment = .center
        phoneNumber.font = UIFont.systemFont(ofSize: 16)
        return phoneNumber
    }()
    // phoneNumberTextField
    lazy var phoneNumberTextField: UITextField = {
        let phoneNumber = UITextField()
        phoneNumber.leftViewMode = .always
        phoneNumber.delegate = self
        let iconButton = UIButton(frame: CGRect(x: 0, y: 5, width: 90, height: 20))
        iconButton.setImage(UIImage(named: "nigeriaIcon"), for: .normal)
        let iconContainerView: UIView = UIView(frame:
                                                CGRect(x: 10, y: 10, width: 80, height: 30))
        iconContainerView.addSubview(iconButton)
        phoneNumber.heightAnchor.constraint(equalToConstant: 45).isActive = true
        phoneNumber.leftView = iconContainerView
        phoneNumber.text = "+234"
        phoneNumber.placeholder = "82 123 4567"
        phoneNumber.textColor = UIColor.lightText
        phoneNumber.keyboardType = .numberPad
        phoneNumber.layer.cornerRadius = 8
        phoneNumber.font = UIFont.systemFont(ofSize: 21, weight: .bold)
        phoneNumber.backgroundColor = UIColor.CustomColor.textFieldBackgroundColor
        phoneNumber.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        phoneNumber.translatesAutoresizingMaskIntoConstraints = false
        return phoneNumber
    }()
    // passwordLabel
    lazy var passwordLabel: UILabel = {
        let  password = UILabel()
        password.text = "Password"
        password.translatesAutoresizingMaskIntoConstraints = false
        password.textColor = .white
        password.font = UIFont.systemFont(ofSize: 16)
        return password
    }()
    // passwordTextField
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        passwordTextField.layer.cornerRadius = 8
        passwordTextField.backgroundColor = UIColor.CustomColor.textFieldBackgroundColor
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.addTarget(self, action: #selector(handleTextChange), for: .editingChanged)
        return passwordTextField
    }()
    // reviewPasswordTextButton
    lazy var reviewPasswordTextBoxButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 25).isActive = true
        button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 26
        button.layer.borderColor = UIColor.white.cgColor
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.addTarget(self, action: #selector(reviewPassword), for: .touchUpInside)
        return button
    }()
    // rememberMeBoxButton
    lazy var rememberMeBoxButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.widthAnchor.constraint(equalToConstant: 30).isActive = true
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.white.cgColor
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.addTarget(self, action: #selector(checkmarkRememberMe), for: .touchUpInside)
        return button
    }()
    // rememberMeLabel
    lazy var rememberMeLabel: UILabel = {
        let  label = UILabel()
        label.text = "Remember me"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    // forgotPasswordButton
    lazy var forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Forgot Password?", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.setTitleColor(UIColor.CustomColor.primaryGoldColor, for: .normal)
        return button
    }()
    // registerNewDeviceButton
    lazy var registerNewDeviceButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register new device", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.setTitleColor(UIColor.CustomColor.primaryGoldColor, for: .normal)
        return button
    }()
    // loginButton
    lazy var loginButton: UIButton = {
        let button = customAuthButton(text: "Login")
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = customFont(font: .robotoBlack, size: 16)
        button.backgroundColor = UIColor.CustomColor.primaryGoldColor
        button.addTarget(self, action: #selector(implementLogin), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    // poweredBYLabel
    lazy var poweredBYLabel: UILabel = {
        let poweredBY = UILabel()
        poweredBY.text = "Powered by FINEX MFB"
        poweredBY.translatesAutoresizingMaskIntoConstraints = false
        poweredBY.textColor = .white
        poweredBY.textAlignment = .center
        poweredBY.font = UIFont.systemFont(ofSize: 17)
        return poweredBY
    }()
    // versionLabel
    lazy var versionLabel: UILabel = {
        let version = UILabel()
        version.text = "Version 1.2.70"
        version.translatesAutoresizingMaskIntoConstraints = false
        version.textColor = .white
        version.textAlignment = .center
        version.font = UIFont.systemFont(ofSize: 14)
        return version
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUPView()
        view.backgroundColor = .black
        
    }
    @objc func handleTextChange() {
        let phoneNumber = phoneNumberTextField.text!
        let passwordText = passwordTextField.text!
        let isFormFilled = !phoneNumber.isEmpty && !passwordText.isEmpty
        if isFormFilled {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
    @objc func returnHome() {
        dismiss(animated: true)
    }
    @objc func implementLogin() {
        guard let phone = phoneNumberTextField.text,
              let password = passwordTextField.text
        else {
            return
        }
        
        network.login(phoneNumber: phone, password: password, completion: { [weak self] success in
            switch success {
            case true:
                let nextVC = MainScreenTabBarViewController()
                nextVC.modalPresentationStyle = .fullScreen
                self?.present(nextVC, animated: true)
            case false:
                let config = UIImage.SymbolConfiguration(pointSize: 18, weight: .bold)
                let image = UIImageView(frame: CGRect(x: 170, y: 20, width: 50, height: 50))
                let item = UIImage(systemName: "face.smiling", withConfiguration: config)
                image.tintColor = .red.withAlphaComponent(0.34)
                image.image = item
                let title = " \n\n \n\nSomething went wrong \n\n"
                let message = "Enter correct phone number and password. The demo number is +2347031276982 and password is 1234"
                let alert = UIAlertController(title: title,
                                              message: message, preferredStyle: .actionSheet)
                alert.view.addSubview(image)
                alert.setMessage(font: UIFont.systemFont(ofSize: 15, weight: .bold), color: .brown)
                alert.setTitle(font: UIFont.systemFont(ofSize: 15, weight: .bold), color: .brown)
                alert.overrideUserInterfaceStyle = .dark
                alert.addAction(UIAlertAction(title: "Got it", style: .cancel))
                self?.present(alert, animated: true, completion: nil)
                print("There was an error signin in...")
            }
        })
        
    }
    @objc func reviewPassword() {
        passwordTextField.isSecureTextEntry.toggle()
        switch passwordTextField.isSecureTextEntry {
        case true:
            passwordTextField.isSecureTextEntry = true
        case false:
            passwordTextField.isSecureTextEntry = false
        }
    }
    @objc func checkmarkRememberMe() {
        switch rememberMeBoxButton.currentImage {
        case .none:
            rememberMeBoxButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
        case .some(_):
            rememberMeBoxButton.setImage(UIImage(systemName: ""), for: .normal)
        }
    }
}


