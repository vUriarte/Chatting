//
//  RegistrationViewModel.swift
//  Chatting
//
//  Created by Victor Uriarte on 02/07/21.
//

import Foundation

struct RegistrationViewModel: AuthenticationProtocol {
    var email: String?
    var password: String?
    var fullName: String?
    var userName: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false
            && password?.isEmpty == false
            && fullName?.isEmpty == false
            && userName?.isEmpty == false
    }
}
