//
//  AuthService.swift
//  Twitter
//
//  Created by Farkhat on 12/24/20.
//  Copyright © 2020 Farkhat Senalov. All rights reserved.
//

import Foundation

protocol AuthService {
    func login(by password: String)
    func logout()
    func signUp(by phoneNumber: String)
}

final class AuthServiceImpl: AuthService {
    func login(by password: String) {
        // TODO: Logic for login
    }

    func logout() {
        // TODO: Logic for logout
    }

    func signUp(by phoneNumber: String) {
        // TODO: Logic for signUp
    }
}
