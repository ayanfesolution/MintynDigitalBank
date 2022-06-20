//
//  NetworkManager.swift
//  MintynDigitalBank
//
//  Created by Decagon on 18/06/2022.
//
import Foundation
protocol NetworkService {
    func login(phoneNumber: String, password: String, completion: @escaping (Bool) -> Void)
    func getLoggedInUser() -> User?
}
class NetworkManager: NetworkService {
    // MARK: - Error
    enum NetworkError: Error {
        case invalidCredentials
        var title: String {
            switch self {
            case .invalidCredentials:
                return "Invalid Credentials"
            }
        }
        var message: String {
            switch self {
            case .invalidCredentials:
                return "Check details provided and then try again."
            }
        }
    }
    // MARK: - Singleton
    static let shared = NetworkManager()
    // MARK: - Properties
    private var user: User?
    // MARK: - Initializer
    private init() {}
    // MARK: - Resources
    func login(phoneNumber: String,
               password: String,
               completion: @escaping (Bool) -> Void
    ) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            if phoneNumber.elementsEqual("+2347031276982") && password.elementsEqual("1234") {
                self?.user = User(firstName: "Afolabi",
                                  lastName: "Ayanfe",
                                  age: 42, email: "test@test.com",
                                  accountBalance: "#22100",
                                  ledgerBalance: "#23000",
                                  accountType: "Individual",
                                  accountNumber: "1101202033"
                )
                completion(true)
            } else {
                self?.user = nil
                completion(false)
            }
        }
    }
    func getLoggedInUser() -> User? {
        return user
    }
}
