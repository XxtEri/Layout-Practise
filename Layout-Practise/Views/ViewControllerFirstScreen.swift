//
//  ViewControllerFirstScreen.swift
//  Layout-Practise
//
//  Created by Елена on 23.03.2023.
//

import Combine
import UIKit

extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
}

protocol IViewControllerFirstScreen: AnyObject {
    func showError()
    func signUp()
}

class ViewControllerFirstScreen: UIViewController {
    
    private var presenter: PresenterFirstScreen

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!

    @IBAction func signUp(_ sender: Any) {
        guard let name = nameInput.text else { return }
        guard let email = emailInput.text else { return }
        guard let password = passwordInput.text else { return }
        
        presenter.checkInputField(name: name, email: email, password: password)
    }
    
    init() {
        self.presenter = PresenterFirstScreen(viewController: ViewControllerFirstScreen())
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.presenter = PresenterFirstScreen(viewController: nil)
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewControllerFirstScreen: IViewControllerFirstScreen {
    func showError() {
        print("Error")
    }
    
    func signUp() {
        print("Sign up")
    }
}
