//
//  ViewControllerFirstScreen.swift
//  Layout-Practise
//
//  Created by Елена on 23.03.2023.
//

import UIKit

class ViewControllerFirstScreen: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameInput.addPaddingToTextField()
        self.emailInput.addPaddingToTextField()
        self.passwordInput.addPaddingToTextField()
        
        self.nameInput.addCornerRadius()
    }
}

extension UITextField {
    func addPaddingToTextField() {
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 16, height: 0))
        
        self.leftView = paddingView
        self.leftViewMode = .always
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    func addCornerRadius() {
        self.layer.cornerRadius = 12
    }
}
