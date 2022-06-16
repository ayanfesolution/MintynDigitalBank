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
    let logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.heightAnchor.constraint(equalToConstant: 150).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        logo.image = UIImage(named: "welcomelogo")
        return logo
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setUPView()
        // Do any additional setup after loading the view.
    }
    
    func setUPView() {
        let uiViews = [logoImageView]
        for uiView in uiViews {
            view.addSubview(uiView)
        }
        //MARK: - Setting Up Constraints for the UIViews
        NSLayoutConstraint.activate([
            // Constraints for logoImageView
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
        
        
        
        
    }
}

