//
//  LoginViewModel.swift
//  Chatting
//
//  Created by Victor Uriarte on 01/07/21.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
