//
//  Presenter.swift
//  Layout-Practise
//
//  Created by Елена on 29.03.2023.
//

class PresenterFirstScreen {
    private weak var viewController: IViewControllerFirstScreen?
    private var validation: Validation
    
    private var validationErrorFoundHandler: (() -> Void)?
    private var SignInHandler: (() -> Void)?
    
    init(with viewController: IViewControllerFirstScreen) {
        self.viewController = viewController
        self.validation = Validation()
        
        self.setHandler()
    }
    
    func checkInputField(name: String, email: String, password: String) {
        if !validation.checkEmail(email) ||
            !validation.checkPassword(password) ||
            !validation.checkName(name) {
            
            self.validationErrorFoundHandler?()
            
        } else {
            
            self.SignInHandler?()
        }
    }
    
    func setHandler() {
        self.validationErrorFoundHandler = { [weak self] in
            self?.viewController?.showError()
        }
        
        self.SignInHandler = { [ weak self ] in
            self?.viewController?.signUp()
        }
    }
}
