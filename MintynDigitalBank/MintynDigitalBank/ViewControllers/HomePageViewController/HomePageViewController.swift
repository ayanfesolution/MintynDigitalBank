//
//  HomePageViewController.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//

import UIKit

class HomePageViewController: UIViewController {
    // MARK: - Properties (Created Using IIFE: Immediately Invoked Function Expression)
    let reusableCell = "advertCell"
    let advertImage  = ["advertbannerone", "advertbannertwo"]
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
    // notificationButton
    lazy var addActionFloatingButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .bold)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "plus", withConfiguration: config), for: .normal)
        button.tintColor = UIColor.CustomColor.primaryGoldColor
        button.heightAnchor.constraint(equalToConstant: 80).isActive = true
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.layer.cornerRadius = 40
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.CustomColor.primaryGoldColor
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
    // profileDetailsDropDownButton
    lazy var profileDetailsDropDownButton: UIButton = {
        let button = UIButton(type: .system)
        let config = UIImage.SymbolConfiguration(pointSize: 15, weight: .bold)
        button.setImage(UIImage(systemName: "arrowtriangle.down.fill", withConfiguration: config), for: .normal)
        button.tintColor = UIColor.CustomColor.textColorGray
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // profileCopyButton
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
        combineOtherViews.layer.cornerRadius = 40
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
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    // amountLabel
    lazy var mainAmountLabel: UILabel = {
       let label = UILabel()
        label.text = "#2500.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont.systemFont(ofSize: 25, weight: .heavy)
        return label
    }()
    // fundAccountButton
    lazy var fundAccountButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Fund Account", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()
    // ledgerBalance
    lazy var ledgerBalance: UILabel = {
       let label = UILabel()
        label.text = "Ledger Balance:"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        return label
    }()
    // amountLabel
    lazy var ledgerAmountLabel: UILabel = {
       let label = UILabel()
        label.text = "#3300.00"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .heavy)
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
        hideSwitch.thumbTintColor = UIColor.CustomColor.primaryGoldColor
        hideSwitch.onTintColor = UIColor.clear
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
    // advertCollectionView
    lazy var advertCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 300, height: 80)
        let advertCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        advertCollectionView.translatesAutoresizingMaskIntoConstraints = false
        advertCollectionView.register(AdvertCollectionViewCell.self, forCellWithReuseIdentifier: reusableCell)
        advertCollectionView.delegate = self
        advertCollectionView.dataSource = self
        return advertCollectionView
    }()
    // transactionsUIView
    lazy var transactionsUIView: UIView = {
       let transactionsUIView = UIView()
        transactionsUIView.layer.cornerRadius = 8
        transactionsUIView.layer.borderWidth = 1
        transactionsUIView.layer.borderColor = UIColor.white.cgColor
        transactionsUIView.backgroundColor = .white
        transactionsUIView.translatesAutoresizingMaskIntoConstraints = false
        return transactionsUIView
    }()
    // hideBalanceLabel
    lazy var noTranscationsyetLabel: UILabel = {
       let label = UILabel()
        label.text = "No transcations yet"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // chooseAnOptionToStart
    lazy var chooseAnOptionToStart: UILabel = {
       let label = UILabel()
        label.text = "Choose an option below to start."
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // noTransactionsImage
    lazy var noTransactionsImage: UIView = {
        let transactionImage = UIView()
        transactionImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        transactionImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
        transactionImage.translatesAutoresizingMaskIntoConstraints = false
        transactionImage.layer.cornerRadius = 30
        transactionImage.backgroundColor = UIColor.systemOrange.withAlphaComponent(0.09)
        let image = UIImageView()
        transactionImage.addSubview(image)
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: .bold)
        image.image = UIImage(systemName: "chart.line.uptrend.xyaxis", withConfiguration: config)
        image.centerXAnchor.constraint(equalTo: transactionImage.centerXAnchor).isActive = true
        image.centerYAnchor.constraint(equalTo: transactionImage.centerYAnchor).isActive = true
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.primaryGoldColor
        return transactionImage
    }()
    
    lazy var completeYourVerificationButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Complete your Verification                         ", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.setTitleColor(UIColor.CustomColor.primaryGoldColor, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 6
        button.backgroundColor = .white
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        return button
    }()
    // completeYourVerificationButtonArrow
    lazy var completeYourVerificationButtonArrow: UIButton = {
        let navBtn = UIButton()
        let config = UIImage.SymbolConfiguration(pointSize: 25, weight: UIImage.SymbolWeight.bold)
        navBtn.translatesAutoresizingMaskIntoConstraints = false
        navBtn.setImage(UIImage(systemName: "chevron.forward", withConfiguration: config), for: .normal)
        navBtn.tintColor = UIColor.CustomColor.textColorGray
        return navBtn
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
        let items = [headerView, straightLine, homePageView, addActionFloatingButton]
        for item in items {
            view.addSubview(item)
        }
        let scrollLists = [profileDetailsView, combineOtherViews, accountBalanceDetailsView, ledgerBalance, ledgerAmountLabel, hideBalanceSwitch, hideBalanceLabel, straightLineTwo, advertCollectionView, transactionsUIView, completeYourVerificationButton, completeYourVerificationButtonArrow]
        for scrollList in scrollLists {
            homePageView.addSubview(scrollList)
        }
        let profileViewItems = [profileCopyButton, profileDetailsDropDownButton, profileAccountType, profileAccountNumber, profileAccountName, profileImage]
        for profileViewItem in profileViewItems {
            profileDetailsView.addSubview(profileViewItem)
        }
        let accountBalanceViewLists = [avaliableBalance, mainAmountLabel, fundAccountButton]
        for accountBalanceViewList in accountBalanceViewLists {
            accountBalanceDetailsView.addSubview(accountBalanceViewList)
        }
        let noTranscationsItems = [noTransactionsImage, noTranscationsyetLabel, chooseAnOptionToStart]
        for noTranscationsItem in noTranscationsItems {
            transactionsUIView.addSubview(noTranscationsItem)
        }
            //MARK: - Setting Up Constraints for the UIViews
            NSLayoutConstraint.activate([
                addActionFloatingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                addActionFloatingButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16),
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
                combineOtherViews.topAnchor.constraint(equalTo: completeYourVerificationButton.bottomAnchor, constant: 20),
                combineOtherViews.heightAnchor.constraint(equalToConstant: 200),
                //  constraints for profileImage
                profileImage.topAnchor.constraint(equalTo: profileDetailsView.topAnchor),
                profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                //  constraints for profileAccountName
                profileAccountName.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 25),
                profileAccountName.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
                //  constraints for profileAccountType
                profileAccountType.topAnchor.constraint(equalTo: profileAccountName.bottomAnchor),
                profileAccountType.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 20),
                //  constraints for profileAccountNumber
                profileAccountNumber.topAnchor.constraint(equalTo: profileAccountName.bottomAnchor),
                profileAccountNumber.leadingAnchor.constraint(equalTo: profileAccountType.trailingAnchor, constant: 5),
                //  constraints for profileCopyButton
                profileCopyButton.trailingAnchor.constraint(equalTo: profileDetailsView.trailingAnchor, constant: -20),
                profileCopyButton.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 25),
                //  constraints for profileDetailsDropDownButton
                profileDetailsDropDownButton.leadingAnchor.constraint(equalTo: profileAccountNumber.trailingAnchor, constant: 10),
                profileDetailsDropDownButton.topAnchor.constraint(equalTo: profileDetailsView.topAnchor, constant: 30),
                //  constraints for profileDetailsView
                profileDetailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                profileDetailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                profileDetailsView.heightAnchor.constraint(equalToConstant: 100),
                profileDetailsView.topAnchor.constraint(equalTo: homePageView.topAnchor),
                //  constraints for accountBalanceDetailsView
                accountBalanceDetailsView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                accountBalanceDetailsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                accountBalanceDetailsView.topAnchor.constraint(equalTo: profileDetailsView.bottomAnchor),
                //  constraints for avaliableBalance
                avaliableBalance.topAnchor.constraint(equalTo: accountBalanceDetailsView.topAnchor, constant: 40),
                avaliableBalance.leadingAnchor.constraint(equalTo: accountBalanceDetailsView.leadingAnchor, constant: 20),
                //  constraints for mainAmountLabel
                mainAmountLabel.topAnchor.constraint(equalTo: avaliableBalance.bottomAnchor, constant: 5),
                mainAmountLabel.leadingAnchor.constraint(equalTo: accountBalanceDetailsView.leadingAnchor, constant: 20),
                //  constraints for
                fundAccountButton.centerYAnchor.constraint(equalTo: accountBalanceDetailsView.centerYAnchor),
                fundAccountButton.trailingAnchor.constraint(equalTo: accountBalanceDetailsView.trailingAnchor, constant: -20),
                fundAccountButton.heightAnchor.constraint(equalToConstant: 45),
                fundAccountButton.widthAnchor.constraint(equalToConstant: 130),
                //  constraints for ledgerBalance
                ledgerBalance.topAnchor.constraint(equalTo: accountBalanceDetailsView.bottomAnchor, constant: 15),
                ledgerBalance.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
                //  constraints for ledgerAmountLabel
                ledgerAmountLabel.topAnchor.constraint(equalTo: accountBalanceDetailsView.bottomAnchor, constant: 15),
                ledgerAmountLabel.leadingAnchor.constraint(equalTo: ledgerBalance.trailingAnchor, constant: 5),
                //  constraints for hideBalanceLabel
                hideBalanceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
                hideBalanceLabel.topAnchor.constraint(equalTo: accountBalanceDetailsView.bottomAnchor, constant: 17),
                //  constraints for hideBalanceSwitch
                hideBalanceSwitch.topAnchor.constraint(equalTo: accountBalanceDetailsView.bottomAnchor, constant: 12),
                hideBalanceSwitch.trailingAnchor.constraint(equalTo: hideBalanceLabel.leadingAnchor, constant: -5),
                //  constraints for straightLineTwo
                straightLineTwo.topAnchor.constraint(equalTo: hideBalanceSwitch.bottomAnchor, constant: 12),
                straightLineTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                straightLineTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //  constraints for advertCollectionView
                advertCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                advertCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                advertCollectionView.topAnchor.constraint(equalTo: straightLineTwo.bottomAnchor),
                advertCollectionView.heightAnchor.constraint(equalToConstant: 160),
                //  constraints for transactionsUIView
                transactionsUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                transactionsUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                transactionsUIView.topAnchor.constraint(equalTo: advertCollectionView.bottomAnchor, constant: 10),
                transactionsUIView.heightAnchor.constraint(equalToConstant: 180),
                //  constraints for noTransactionsImage
                noTransactionsImage.topAnchor.constraint(equalTo: transactionsUIView.topAnchor, constant: 30),
                noTransactionsImage.centerXAnchor.constraint(equalTo: transactionsUIView.centerXAnchor),
                //  constraints for noTranscationsyetLabel
                noTranscationsyetLabel.topAnchor.constraint(equalTo: noTransactionsImage.bottomAnchor, constant: 10),
                noTranscationsyetLabel.centerXAnchor.constraint(equalTo: transactionsUIView.centerXAnchor),
                //  constraints for chooseAnOptionToStart
                chooseAnOptionToStart.topAnchor.constraint(equalTo: noTranscationsyetLabel.bottomAnchor, constant: 10),
                chooseAnOptionToStart.centerXAnchor.constraint(equalTo: transactionsUIView.centerXAnchor),
                //  constraints for completeYourVerificationButton
                completeYourVerificationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                completeYourVerificationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                completeYourVerificationButton.topAnchor.constraint(equalTo: transactionsUIView.bottomAnchor, constant: 10),
                //  constraints for completeYourVerificationButtonArrow
                completeYourVerificationButtonArrow.trailingAnchor.constraint(equalTo: completeYourVerificationButton.trailingAnchor, constant: -10),
                completeYourVerificationButtonArrow.centerYAnchor.constraint(equalTo: completeYourVerificationButton.centerYAnchor),
                //  constraints for combineOtherViews
                combineOtherViews.bottomAnchor.constraint(equalTo: homePageView.bottomAnchor),
                combineOtherViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                combineOtherViews.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                //  constraints for
                //  constraints for
            ])
    }
}

extension HomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return advertImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reusableCell, for: indexPath) as? AdvertCollectionViewCell else { return UICollectionViewCell() }
        let images = advertImage[indexPath.item]
        cell.imageView.image = UIImage(named: images)
        return cell
    }
    
    
}
