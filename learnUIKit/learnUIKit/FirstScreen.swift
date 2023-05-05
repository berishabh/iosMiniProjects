//
//  ViewController.swift
//  learnUIKit
//
//  Created by Rishabh  Kumar on 23/04/23.
//

import UIKit

class FirstScreen: UIViewController {
    
    override func loadView() {
        
        // Create a new view
            let view = UIView()
            view.backgroundColor = .white
           
            // Create a label
            let label = UILabel()
            label.text = "Welcome to the Quiz"
            label.font = .boldSystemFont(ofSize: 80)
            label.textColor = .black
            label.textAlignment = .center
            label.numberOfLines = 0
           
           // Add the label as a subview
           view.addSubview(label)
           
           // Set the view controller's view
           self.view = view
           
           // Turn off autoresizing mask translation
           label.translatesAutoresizingMaskIntoConstraints = false
           
           // Create constraints for the label
           let centerXConstraint = label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
           let centerYConstraint = label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
           
           // Activate the constraints
           NSLayoutConstraint.activate([centerXConstraint, centerYConstraint])
       }
   }
