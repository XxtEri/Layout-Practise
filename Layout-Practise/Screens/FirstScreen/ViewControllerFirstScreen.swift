//
//  ViewControllerFirstScreen.swift
//  Layout-Practise
//
//  Created by Елена on 23.03.2023.
//

import UIKit

extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get { return UIColor(cgColor: layer.borderColor!) }
        set { layer.borderColor = newValue?.cgColor }
    }
}

class ViewControllerFirstScreen: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
