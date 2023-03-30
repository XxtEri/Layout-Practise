//
//  Validation.swift
//  Layout-Practise
//
//  Created by Елена on 29.03.2023.
//

import Foundation

class Validation {
    func checkPassword(_ password: String) -> Bool{
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", ".{6,}")
        
        if !passwordPredicate.evaluate(with: password) || password.isEmpty {
            return false
        }
        
        return true
    }
    
    func checkEmail(_ email: String) -> Bool {
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}")
        
        if !emailPredicate.evaluate(with: email) || email.isEmpty {
            return false
        }
        
        return true
    }
    
    func checkName(_ name: String) -> Bool {
        
        if name.isEmpty {
            return false
        }
        
        return true
    }
}
