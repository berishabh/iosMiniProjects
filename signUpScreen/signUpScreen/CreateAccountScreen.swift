//  CreateAccountScreen.swift
//  signUpScreen
//
//  Created by Rishabh  Kumar on 08/05/23.
//

import UIKit

class CreateAccountScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .blue
        
        let emailAddress = UITextField()
        
        
        
    }
}

//
//Sure, I can help you with that. You can use the UITextField class to create text fields for email address and password. You can also use the frame property to set the position and size of the text fields relative to the screen. Here is a possible code snippet that you can use:
//
//import UIKit
//
//class CreateAccountScreen: UIViewController {
//
// override func viewDidLoad() {
//
// super.viewDidLoad()
//
//
//
// self.view.backgroundColor = .white
//
//
//
// // Create a text field for email address
//
// let emailAddress = UITextField()
//
// // Set the frame of the text field to start from 30% of the screen height
//
// emailAddress.frame = CGRect(x: 20, y: self.view.bounds.height * 0.3, width: self.view.bounds.width - 40, height: 40)
//
// // Set the placeholder text and keyboard type
//
// emailAddress.placeholder = "Email address"
//
// emailAddress.keyboardType = .emailAddress
//
// // Add the text field to the view
//
// self.view.addSubview(emailAddress)
//
//
//
// // Create a text field for password
//
// let password = UITextField()
//
// // Set the frame of the text field to start from 45% of the screen height
//
// password.frame = CGRect(x: 20, y: self.view.bounds.height * 0.45, width: self.view.bounds.width - 40, height: 40)
//
// // Set the placeholder text and secure entry mode
//
// password.placeholder = "Password"
//
// password.isSecureTextEntry = true
//
// // Add the text field to the view
//
// self.view.addSubview(password)
//
//
//
// }
//
//}
