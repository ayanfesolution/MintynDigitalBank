//
//  HomePageController+Extension.swift
//  MintynDigitalBank
//
//  Created by Decagon on 17/06/2022.
//
import UIKit
import Foundation
extension HomePageViewController {
    func setUPViews() {
        let headerLists = [logoImageView, notificationButton]
        for headerList in headerLists {
            headerView.addSubview(headerList)
        }
        let items = [headerView, straightLine, homePageView, addActionFloatingButton]
        for item in items {
            view.addSubview(item)
        }
        let combineOtherViewsLists = [actionsButtonStackView, investAndSavingsActionStackView, mintynMarketplaceButton,mintynMarketplaceButtonIcon, mintnyInvestDetailsActionIconLeft, mintnyInvestDetailsActionIconRight, mintnyInvestDetailsActionTitle, mintnyInvestDetailsActionSubTitle, savingsGoalsActionIconRight, savingsGoalsActionTitle, savingsGoalsActionSubTitle, savingsGoalsActionIconLeft, mintynMarketplaceButtonTitle, mintynMarketplaceButtonSubTitle, savingsGoalsActionSubTitle]
        for combineOtherViewsList in combineOtherViewsLists {
            combineOtherViews.addSubview(combineOtherViewsList)
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
            combineOtherViews.bottomAnchor.constraint(equalTo: homePageView.bottomAnchor, constant: 10),
            combineOtherViews.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            combineOtherViews.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            combineOtherViews.topAnchor.constraint(equalTo: completeYourVerificationButton.bottomAnchor, constant: 20),
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
            //  constraints for actionsButtonStackView
            actionsButtonStackView.topAnchor.constraint(equalTo: combineOtherViews.topAnchor, constant: 20),
            actionsButtonStackView.leadingAnchor.constraint(equalTo: combineOtherViews.leadingAnchor, constant: 20),
            actionsButtonStackView.trailingAnchor.constraint(equalTo: combineOtherViews.trailingAnchor, constant: -20),
            //  constraints for investAndSavingsActionStackView
            investAndSavingsActionStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            investAndSavingsActionStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            investAndSavingsActionStackView.topAnchor.constraint(equalTo: actionsButtonStackView.bottomAnchor, constant: 30),
            //  constraints for mintynMarketplaceButton
            mintynMarketplaceButton.topAnchor.constraint(equalTo: investAndSavingsActionStackView.bottomAnchor, constant: 20),
            mintynMarketplaceButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mintynMarketplaceButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mintynMarketplaceButton.bottomAnchor.constraint(equalTo: combineOtherViews.bottomAnchor, constant: -20),
            //  constraints for mintynMarketplaceButtonIcon
            mintynMarketplaceButtonIcon.leadingAnchor.constraint(equalTo: mintynMarketplaceButton.leadingAnchor, constant: 20),
            mintynMarketplaceButtonIcon.centerYAnchor.constraint(equalTo: mintynMarketplaceButton.centerYAnchor),
            //  constraints for
            mintynMarketplaceButtonTitle.topAnchor.constraint(equalTo: mintynMarketplaceButton.topAnchor, constant: 35),
            mintynMarketplaceButtonTitle.leadingAnchor.constraint(equalTo: mintynMarketplaceButtonIcon.trailingAnchor, constant: 10),
            //  constraints for
            mintynMarketplaceButtonSubTitle.topAnchor.constraint(equalTo: mintynMarketplaceButtonTitle.bottomAnchor),
            mintynMarketplaceButtonSubTitle.leadingAnchor.constraint(equalTo: mintynMarketplaceButtonIcon.trailingAnchor, constant: 10),
            
            //  constraints for mintnyInvestDetailsActionIconLeft
            mintnyInvestDetailsActionIconLeft.leadingAnchor.constraint(equalTo: mintnyInvestDetailsAction.leadingAnchor, constant: 16),
            mintnyInvestDetailsActionIconLeft.topAnchor.constraint(equalTo: mintnyInvestDetailsAction.topAnchor, constant: 16),
            //  constraints for mintnyInvestDetailsActionIconRight
            mintnyInvestDetailsActionIconRight.trailingAnchor.constraint(equalTo: mintnyInvestDetailsAction.trailingAnchor, constant: -16),
            mintnyInvestDetailsActionIconRight.topAnchor.constraint(equalTo: mintnyInvestDetailsAction.topAnchor, constant: 16),
            //  constraints for mintnyInvestDetailsActionTitle
            mintnyInvestDetailsActionTitle.leadingAnchor.constraint(equalTo: mintnyInvestDetailsAction.leadingAnchor, constant: 16),
            mintnyInvestDetailsActionTitle.topAnchor.constraint(equalTo: mintnyInvestDetailsActionIconLeft.bottomAnchor, constant: 4),
            //  constraints for mintnyInvestDetailsActionTitle
            mintnyInvestDetailsActionTitle.leadingAnchor.constraint(equalTo: mintnyInvestDetailsAction.leadingAnchor, constant: 16),
            mintnyInvestDetailsActionTitle.topAnchor.constraint(equalTo: mintnyInvestDetailsActionIconLeft.bottomAnchor, constant: 4),
            //  constraints for mintnyInvestDetailsActionSubTitle
            mintnyInvestDetailsActionSubTitle.leadingAnchor.constraint(equalTo: mintnyInvestDetailsAction.leadingAnchor, constant: 16),
            mintnyInvestDetailsActionSubTitle.topAnchor.constraint(equalTo: mintnyInvestDetailsActionTitle.bottomAnchor),
            mintnyInvestDetailsActionSubTitle.trailingAnchor.constraint(equalTo: mintnyInvestDetailsAction.trailingAnchor, constant: -16),
            //  constraints for savingsGoalsActionIconLeft
            savingsGoalsActionIconLeft.leadingAnchor.constraint(equalTo: savingsGoalsAction.leadingAnchor, constant: 16),
            savingsGoalsActionIconLeft.topAnchor.constraint(equalTo: savingsGoalsAction.topAnchor, constant: 16),
            //  constraints for savingsGoalsActionIconRight
            savingsGoalsActionIconRight.trailingAnchor.constraint(equalTo: savingsGoalsAction.trailingAnchor, constant: -16),
            savingsGoalsActionIconRight.topAnchor.constraint(equalTo: savingsGoalsAction.topAnchor, constant: 16),
            //  constraints for savingsGoalsActionTitle
            savingsGoalsActionTitle.topAnchor.constraint(equalTo: savingsGoalsActionIconRight.bottomAnchor, constant: 5),
            savingsGoalsActionTitle.leadingAnchor.constraint(equalTo: savingsGoalsAction.leadingAnchor, constant: 16),
            savingsGoalsActionTitle.trailingAnchor.constraint(equalTo: savingsGoalsAction.trailingAnchor, constant: -16),
            //  constraints for savingsGoalsActionSubTitle
            savingsGoalsActionSubTitle.topAnchor.constraint(equalTo: savingsGoalsActionTitle.bottomAnchor),
            savingsGoalsActionSubTitle.leadingAnchor.constraint(equalTo: savingsGoalsAction.leadingAnchor, constant: 16),
            savingsGoalsActionSubTitle.trailingAnchor.constraint(equalTo: savingsGoalsAction.trailingAnchor, constant: -16)
            //  constraints for
        ])
    }
}
