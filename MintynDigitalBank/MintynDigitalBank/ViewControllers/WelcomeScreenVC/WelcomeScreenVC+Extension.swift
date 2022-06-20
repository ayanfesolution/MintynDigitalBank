//
//  File.swift
//  MintynDigitalBank
//
//  Created by Decagon on 20/06/2022.
//
import UIKit
import Foundation

extension WelcomeScreenViewController {
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
