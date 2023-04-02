//
//  ViewModel.swift
//  Layout-Practise
//
//  Created by Елена on 02.04.2023.
//

import Foundation

class ViewModel {
    private var validation = Validation()
    var statusText = Dynamic("")
    
    private func checkValidData(name: String, email: String, password: String) {
        if !validation.checkName(name) ||
            !validation.checkEmail(email) ||
            !validation.checkPassword(password) {
            
            statusText.value = "Sign up failed"
            
        } else {
            
            statusText.value = "You are sign up"
        }
    }
    
    func userButtonPressed(name: String, email: String, password: String) {
        checkValidData(name: name, email: email, password: password)
    }
}
