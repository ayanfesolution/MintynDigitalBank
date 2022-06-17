//
//  HomePageViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class HomePageViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    //  headerview
    lazy var headerView: UIView = {
       let header = UIView()
        header.translatesAutoresizingMaskIntoConstraints = false
        header.heightAnchor.constraint(equalToConstant: 70).isActive = true
        return header
    }()
    // notificationButton
    lazy var notificationButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "bell.fill"), for: .normal)
        button.tintColor = UIColor.CustomColor.textColorGray
        button.contentMode = .scaleAspectFill
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    // logoImageView
    lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "mainlogo")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        return image
    }()
    // straightLine
    lazy var straightLine: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.backgroundColor = UIColor.CustomColor.textColorGray
        return line
    }()
    // homePageView
    lazy var homePageView: UIScrollView = {
        let homePage = UIScrollView()
        homePage.translatesAutoresizingMaskIntoConstraints = false
        homePage.backgroundColor = .clear
        return homePage
    }()
    // profileDetailsView
    lazy var profileDetailsView: UIView = {
        let profileDetailsView = UIView()
        profileDetailsView.translatesAutoresizingMaskIntoConstraints = false
        return profileDetailsView
    }()
    // profileImage
    lazy var profileImage: UIImageView = {
        let profile = UIImageView()
        profile.backgroundColor = .red
        profile.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profile.heightAnchor.constraint(equalToConstant: 50).isActive = true
        profileDetailsView.translatesAutoresizingMaskIntoConstraints = false
        return profile
    }()
    // profileAccountType
    lazy var profileAccountName: UILabel = {
       let label = UILabel()
        label.text = "Afolabi Ayanfe"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // profileAccountType
    lazy var profileAccountType: UILabel = {
       let label = UILabel()
        label.text = "Individual"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    // profileAccountNumber
    lazy var profileAccountNumber: UILabel = {
       let label = UILabel()
        label.text = ".1101891907 | Tier 1"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.primaryGoldColor
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    // a
    lazy var profileDetailsDropDownButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .bold)
        button.setImage(UIImage(systemName: "arrowtriangle.down.fill", withConfiguration: config), for: .normal)
        button.tintColor = UIColor.CustomColor.textColorGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    lazy var profileCopyButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Copy", for: .normal)
        button.layer.cornerRadius = 16
        button.widthAnchor.constraint(equalToConstant: 75).isActive = true
        button.backgroundColor = UIColor(red: 227, green: 227, blue: 227, alpha: 1)
        button.setTitleColor(UIColor.CustomColor.textColorGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // combineOtherViews
    lazy var combineOtherViews: UIView = {
        let combineOtherViews = UIView()
        combineOtherViews.layer.cornerRadius = 18
        combineOtherViews.backgroundColor = .white
        combineOtherViews.translatesAutoresizingMaskIntoConstraints = false
        return combineOtherViews
    }()
    // accountBalanceDetailsView
    lazy var accountBalanceDetailsView: UIView = {
        let accountBalanceDetailsView = UIView()
        accountBalanceDetailsView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        accountBalanceDetailsView.backgroundColor = UIColor.CustomColor.primaryGoldColor
        accountBalanceDetailsView.translatesAutoresizingMaskIntoConstraints = false
        return accountBalanceDetailsView
    }()
    // avaliableBalance
    lazy var avaliableBalance: UILabel = {
       let label = UILabel()
        label.text = "Available Balance"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // amountLabel
    lazy var mainAmountLabel: UILabel = {
       let label = UILabel()
        label.text = "#2500.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // ledgerBalance
    lazy var ledgerBalance: UILabel = {
       let label = UILabel()
        label.text = "Available Balance"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // amountLabel
    lazy var ledgerAmountLabel: UILabel = {
       let label = UILabel()
        label.text = "#3300.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // hideBalanceLabel
    lazy var hideBalanceLabel: UILabel = {
       let label = UILabel()
        label.text = "Hide Balance"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // hideBalanceSwitch
    lazy var hideBalanceSwitch: UISwitch = {
        let hideSwitch = UISwitch()
        hideSwitch.translatesAutoresizingMaskIntoConstraints = false
        return hideSwitch
    }()
    // straightLineTwo
    lazy var straightLineTwo: UIView = {
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line.backgroundColor = UIColor.CustomColor.textColorGray
        return line
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        setUPViews()
    }
    func setUPViews() {
        let headerLists = [logoImageView, notificationButton]
        for headerList in headerLists {
            headerView.addSubview(headerList)
        }
        let items = [headerView, straightLine, homePageView]
        for item in items {
            view.addSubview(item)
        }
        let scrollLists = [profileDetailsView, combineOtherViews, accountBalanceDetailsView]
        for scrollList in scrollLists {
            homePageView.addSubview(scrollList)
        }
        let profileViewItems = [profileCopyButton, profileDetailsDropDownButton, profileAccountType, profileAccountNumber, profileAccountName, profileImage]
        for profileViewItem in profileViewItems {
            profileDetailsView.addSubview(profileViewItem)
        }
            //MARK: - Setting Up Constraints for the UIViews
            NSLayoutConstraint.activate([
                //  constraints for headerView
                headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //  constraints for logoView
                logoImageView.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 10),
                logoImageView.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
                logoImageView.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16),
                //  constraints for notificationButton
                notificationButton.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -16),
                notificationButton.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 10),
                notificationButton.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -10),
                //  constraints for headerView
                straightLine.topAnchor.constraint(equalTo: headerView.bottomAnchor),
                straightLine.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                straightLine.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //  constraints for homePageView
                homePageView.topAnchor.constraint(equalTo: straightLine.bottomAnchor),
                homePageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                homePageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                homePageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                //  constraints for combineOtherViews
                combineOtherViews.bottomAnchor.constraint(equalTo: homePageView.bottomAnchor),
                combineOtherViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                combineOtherViews.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //  constraints for profileImage
                profileImage.topAnchor.constraint(equalTo: profileDetailsView.topAnchor),
                profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                //  constraints for profileAccountName
                profileAccountName.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 25),
                profileAccountName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
                //  constraints for profileAccountType
                profileAccountType.topAnchor.constraint(equalTo: profileAccountName.bottomAnchor),
                profileAccountType.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
                //  constraints for
                profileAccountNumber.topAnchor.constraint(equalTo: profileAccountName.bottomAnchor),
                profileAccountNumber.leadingAnchor.constraint(equalTo: profileAccountType.trailingAnchor, constant: 5),
                //  constraints for
                profileCopyButton.trailingAnchor.constraint(equalTo: profileDetailsView.trailingAnchor, constant: -20),
                profileCopyButton.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 25),
                //  constraints for
                profileDetailsDropDownButton.leadingAnchor.constraint(equalTo: profileAccountNumber.trailingAnchor, constant: 10),
                profileDetailsDropDownButton.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 30),
                //  constraints for profileDetailsView
                profileDetailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                profileDetailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                profileDetailsView.heightAnchor.constraint(equalToConstant: 100),
                profileDetailsView.topAnchor.constraint(equalTo: straightLine.bottomAnchor),
                //  constraints for
                accountBalanceDetailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                accountBalanceDetailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                accountBalanceDetailsView.topAnchor.constraint(equalTo: profileDetailsView.bottomAnchor),
                //  constraints for
                //  constraints for
                //  constraints for
            ])
    }
}
