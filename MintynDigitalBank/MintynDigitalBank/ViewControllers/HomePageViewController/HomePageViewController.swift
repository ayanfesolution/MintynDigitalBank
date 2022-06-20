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
    let user = NetworkManager.shared.getLoggedInUser()
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
        label.text = "\(user?.firstName ?? "") \(user?.lastName ?? "")"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    // profileAccountType
    lazy var profileAccountType: UILabel = {
        let label = UILabel()
        label.text = "\(user?.accountType ?? "")"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.CustomColor.textColorGray
        label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    // profileAccountNumber
    lazy var profileAccountNumber: UILabel = {
        let label = UILabel()
        label.text = ".\(user?.accountNumber ?? "") | Tier 1"
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
        combineOtherViews.layer.shadowRadius = 2
        combineOtherViews.layer.borderColor = UIColor.systemFill.cgColor
        combineOtherViews.backgroundColor = .systemBackground
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
        label.text = "\(user?.accountBalance ?? "")"
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
        label.text = "\(user?.ledgerBalance ?? "")"
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
        hideSwitch.isOn = false
        hideSwitch.thumbTintColor = UIColor.CustomColor.primaryGoldColor
        hideSwitch.onTintColor = UIColor.clear
        hideSwitch.addTarget(self, action: #selector(switchStateDidChange), for: .valueChanged)
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
    // MARK: - Actions Buttons
    // transferButton
    lazy var transferButton: UIView = {
        let button = customfeaturesButton(text: "Transfer", image: "arrow.left.arrow.right.square")
        return button
    }()
    // topUpButton
    lazy var topUpButton: UIView = {
        let button = customfeaturesButton(text: "Top Up", image: "hourglass.badge.plus")
        return button
    }()
    // payBillButton
    lazy var payBillButton: UIView = {
        let button = customfeaturesButton(text: "Pay Bill", image: "rectangle.portrait.and.arrow.right.fill")
        return button
    }()
    // saveMoneyButton
    lazy var saveMoneyButton: UIView = {
        let button = customfeaturesButton(text: "Save \nMoney", image: "shippingbox.fill")
        return button
    }()
    // mintynInvestButton
    lazy var mintynInvestButton: UIView = {
        let button = customfeaturesButton(text: "Mintyn \nInvest", image: "chart.line.uptrend.xyaxis.circle.fill")
        return button
    }()
    // loanButton
    lazy var loanButton: UIView = {
        let button = customfeaturesButton(text: "Loan", image: "person.text.rectangle.fill")
        return button
    }()
    // businessAccountButton
    lazy var businessAccountButton: UIView = {
        let button = customfeaturesButton(text: "Business \nAccount", image: "bag.fill.badge.plus")
        return button
    }()
    // moreButton
    lazy var moreButton: UIView = {
        let button = customfeaturesButton(text: "More", image: "square.grid.3x1.below.line.grid.1x2.fill")
        return button
    }()
    //MARK: - The StackView for Action Buttons
    // upperHorizonatalStackView
    lazy var upperHorizonatalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(transferButton)
        stackView.addArrangedSubview(topUpButton)
        stackView.addArrangedSubview(payBillButton)
        stackView.addArrangedSubview(saveMoneyButton)
        return stackView
    }()
    // lowerHorizonatalStackView
    lazy var lowerHorizonatalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(mintynInvestButton)
        stackView.addArrangedSubview(loanButton)
        stackView.addArrangedSubview(businessAccountButton)
        stackView.addArrangedSubview(moreButton)
        return stackView
    }()
    // actionsButtonStackView
    lazy var actionsButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(upperHorizonatalStackView)
        stackView.addArrangedSubview(lowerHorizonatalStackView)
        return stackView
    }()
    // mintnyInvestDetailsAction
    lazy var mintnyInvestDetailsAction: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 180).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        return button
    }()
    // savingsGoalsAction
    lazy var savingsGoalsAction: UIButton = {
        let button = UIButton(type: .custom)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 180).isActive = true
        return button
    }()
    // investAndSavingsActionStackView
    lazy var investAndSavingsActionStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalCentering
        stackView.backgroundColor = .clear
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.addArrangedSubview(mintnyInvestDetailsAction)
        stackView.addArrangedSubview(savingsGoalsAction)
        return stackView
    }()
    // mintynMarketplaceButton
    lazy var mintynMarketplaceButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    // mintnyInvestDetailsActionTitle
    lazy var mintnyInvestDetailsActionTitle: UILabel = {
        let label = UILabel()
        label.text = "Mintyn Invest"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // mintnyInvestDetailsActionTitle
    lazy var mintnyInvestDetailsActionSubTitle: UILabel = {
        let label = UILabel()
        label.text = "Start investing towards that life goals with a savings plans that puts you in control."
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // savingsGoalsActionTitle
    lazy var savingsGoalsActionTitle: UILabel = {
        let label = UILabel()
        label.text = "Saving Goals"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // savingsGoalsActionSubTitle
    lazy var savingsGoalsActionSubTitle: UILabel = {
        let label = UILabel()
        label.text = "Start saving towards that life goals with a savings plans that puts you in control"
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // mintynMarketplaceButtonTitle
    lazy var mintynMarketplaceButtonTitle: UILabel = {
        let label = UILabel()
        label.text = "Mintyn Marketplace"
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // mintynMarketplaceButtonSubTitle
    lazy var mintynMarketplaceButtonSubTitle: UILabel = {
        let label = UILabel()
        label.text = "Purchase products for your store easily."
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 11)
        label.textColor = UIColor.CustomColor.textColorGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    // mintnyInvestDetailsActionIconLeft
    lazy var mintnyInvestDetailsActionIconLeft: UIImageView = {
        let image = UIImageView()
        let config = UIImage.SymbolConfiguration(pointSize: 35, weight: .bold)
        image.image = UIImage(systemName: "chart.xyaxis.line", withConfiguration: config)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.primaryGoldColor
        return image
    }()
    // mintnyInvestDetailsActionIconRight
    lazy var mintnyInvestDetailsActionIconRight: UIImageView = {
        let image = UIImageView()
        let config = UIImage.SymbolConfiguration(pointSize: 35, weight: .bold)
        image.image = UIImage(systemName: "arrow.forward.circle.fill", withConfiguration: config)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.textColorGray
        return image
    }()
    // savingsGoalsActionIconLeft
    lazy var savingsGoalsActionIconLeft: UIImageView = {
        let image = UIImageView()
        let config = UIImage.SymbolConfiguration(pointSize: 35, weight: .bold)
        image.image = UIImage(systemName: "shippingbox.fill", withConfiguration: config)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.primaryGoldColor
        return image
    }()
    // savingsGoalsActionIconRight
    lazy var savingsGoalsActionIconRight: UIImageView = {
        let image = UIImageView()
        let config = UIImage.SymbolConfiguration(pointSize: 35, weight: .bold)
        image.image = UIImage(systemName: "arrow.forward.circle.fill", withConfiguration: config)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.textColorGray
        return image
    }()
    lazy var mintynMarketplaceButtonIcon: UIImageView = {
        let image = UIImageView()
        let config = UIImage.SymbolConfiguration(pointSize: 40, weight: .bold)
        image.image = UIImage(systemName: "house.fill", withConfiguration: config)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.tintColor = UIColor.CustomColor.primaryGoldColor
        return image
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        setUPViews()
        updateViewForCurrentTraitCollection()
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        updateViewForCurrentTraitCollection()
    }
    private func updateViewForCurrentTraitCollection() {
        if traitCollection.userInterfaceStyle == .dark {
            view.backgroundColor = .systemBackground
        } else {
            view.backgroundColor = UIColor.CustomColor.viewLightBackgroundColor
        }
    }
    @objc func switchStateDidChange() {
        if (hideBalanceSwitch.isOn == true){
            mainAmountLabel.text = "** . **"
            ledgerAmountLabel.text = "** . **"
        }
        else{
            mainAmountLabel.text = "#2500.00"
            ledgerAmountLabel.text = "#3300.00"
        }
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
