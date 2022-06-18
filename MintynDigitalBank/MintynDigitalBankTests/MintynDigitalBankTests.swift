//
//  MintynDigitalBankTests.swift
//  MintynDigitalBankTests
//
//  Created by Decagon on 16/06/2022.
//
import Foundation
import XCTest
@testable import MintynDigitalBank

class MintynDigitalBankTests: XCTestCase {

    let user = NetworkManager.shared.getLoggedInUser()
    
    
    func testTheNetWorkCallForFirstName() {
        guard let name = self.user?.firstName else {
            return
        }
           let firstName = "Afolabi"
        XCTAssertEqual(name, firstName)
       }
    
    func testIfDataIsNotEmpty() {
        guard let dataName = self.user?.lastName else {
            return
        }
                XCTAssertFalse(dataName.isEmpty)
       }
    
    func testTheNetWorkCallForLastName() {
        guard let name = self.user?.lastName else {
            return
        }
           let lastName = "Ayanfe"
        XCTAssertEqual(name, lastName)
       }
    
    func testTheNetWorkCallForAccountBalance() {
        guard let name = self.user?.accountBalance else {
            return
        }
           let accountBalance = "#22100"
        XCTAssertEqual(name, accountBalance)
       }

}
