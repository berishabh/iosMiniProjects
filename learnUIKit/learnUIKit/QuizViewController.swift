//
//  ViewController.swift
//  learnUIKit
//
//  Created by Rishabh  Kumar on 23/04/23.
//

import UIKit

class QuizViewController: UIViewController {
    
    override func loadView() {
        
        // Create a new view
            let view = UIView()
            view.backgroundColor = .white
           
            // Create a label
            let label = UILabel()
            label.text = "Hello,Rishabh"
            label.font = .boldSystemFont(ofSize: 40)
            label.textColor = .black
            label.textAlignment = .center
           
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
