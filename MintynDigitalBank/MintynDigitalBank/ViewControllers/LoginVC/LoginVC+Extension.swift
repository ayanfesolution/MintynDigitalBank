//
//  LoginVC+Extension.swift
//  MintynDigitalBank
//
//  Created by Decagon on 20/06/2022.
//
import UIKit
import Foundation

extension LoginViewController {
    func setUPView() {
        let uiViews = [upperHorizonatalStackView,lowerHorizonatalStackView, bottomUIView, navTitleHeader, navigationBtn]
        for uiView in uiViews {
            view.addSubview(uiView)
        }
        let items = [versionLabel,poweredBYLabel,phoneNumberLabel,passwordLabel, phoneNumberTextField, passwordTextField, rememberMeLabel, rememberMeBoxButton, forgotPasswordButton, loginButton, registerNewDeviceButton, reviewPasswordTextBoxButton]
        for item in items {
            bottomUIView.addSubview(item)
        }
        
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            //  constraints for Navigation Button
            navigationBtn.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            navigationBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 2),
            // constraints for Header
            navTitleHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            navTitleHeader.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            // constraints for upperHorizonatalStackView
            upperHorizonatalStackView.topAnchor.constraint(equalTo: navTitleHeader.bottomAnchor, constant: 16),
            upperHorizonatalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            upperHorizonatalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            // constraints for lowerHorizonatalStackView
            lowerHorizonatalStackView.topAnchor.constraint(equalTo: upperHorizonatalStackView.bottomAnchor, constant: 16),
            lowerHorizonatalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            lowerHorizonatalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            // Constraints for bottomView
            bottomUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            bottomUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1),
            bottomUIView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomUIView.topAnchor.constraint(equalTo: lowerHorizonatalStackView.bottomAnchor, constant: 40),
            // Constraints for phoneNumber
            phoneNumberLabel.topAnchor.constraint(equalTo: bottomUIView.topAnchor, constant: 25),
            phoneNumberLabel.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            // Constraints for phoneNumberTextField
            phoneNumberTextField.topAnchor.constraint(equalTo: phoneNumberLabel.bottomAnchor, constant: 10),
            phoneNumberTextField.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            phoneNumberTextField.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // Constraints for password
            passwordLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 10),
            passwordLabel.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            passwordLabel.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // Constraints for passwordTextField
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // Constraints for
            reviewPasswordTextBoxButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -16),
            reviewPasswordTextBoxButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 10),
            // Constraints for rememberMeBoxButton
            rememberMeBoxButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            rememberMeBoxButton.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            // Constraints for rememberMeLabel
            rememberMeLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            rememberMeLabel.leadingAnchor.constraint(equalTo: rememberMeBoxButton.trailingAnchor, constant: 10),
            // Constraints for rememberMeLabel
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // Constraints for loginButton
            loginButton.topAnchor.constraint(equalTo: rememberMeBoxButton.bottomAnchor, constant: 10),
            loginButton.leadingAnchor.constraint(equalTo: bottomUIView.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: bottomUIView.trailingAnchor, constant: -16),
            // Constraints for registerNewDeviceButton
            registerNewDeviceButton.centerXAnchor.constraint(equalTo: bottomUIView.centerXAnchor),
            registerNewDeviceButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 10),
            // Constraints for poweredBYLabel
            poweredBYLabel.centerXAnchor.constraint(equalTo: bottomUIView.centerXAnchor),
            poweredBYLabel.topAnchor.constraint(equalTo: registerNewDeviceButton.bottomAnchor),
            // Constraints for versionLabel
            versionLabel.centerXAnchor.constraint(equalTo: bottomUIView.centerXAnchor),
            versionLabel.topAnchor.constraint(equalTo: poweredBYLabel.bottomAnchor, constant: 10)
        ])
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        phoneNumberTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}
