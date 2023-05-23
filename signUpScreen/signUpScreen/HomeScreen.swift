////
////  ViewController.swift
////  signUpScreen
////
////  Created by Rishabh  Kumar on 07/05/23.
////
//
//import UIKit
//
//class HomeScreen: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        self.view.backgroundColor = .lightGray
//        
//        let logoImage = UIImageView(image: UIImage(named: "logo"))
//        logoImage.contentMode = .scaleAspectFit
//        self.view.addSubview(logoImage)
//        logoImage.translatesAutoresizingMaskIntoConstraints = false
//        
//        //Constraints for the imageview
//        NSLayoutConstraint.activate([
//            // Center the image view horizontally
//            logoImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            // Align the top of the image view with the top of the safe area
//            logoImage.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
//            // Set the width of the image view to half of the view's width
//            logoImage.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.4),
//            // Set the height of the image view to a quarter of the view's height
//            logoImage.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.5)
//        ])
//        
//        let titleLabel = UILabel()
//        titleLabel.text = "N Lock"
//        titleLabel.font = .boldSystemFont(ofSize: 40)
//        titleLabel.textColor = .black
//        self.view.addSubview(titleLabel)
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        //Constraints for the titleLabel
//        NSLayoutConstraint.activate([
//            titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            titleLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 0)
//        ])
//        
//        let subtitleLabel = UILabel()
//        subtitleLabel.text = "All Your NFTs in one wallet"
//        subtitleLabel.font = .systemFont(ofSize: 20)
//        subtitleLabel.textColor = .gray
//        self.view.addSubview(subtitleLabel)
//        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        
//        //Constraints for the subtitleLabel
//        NSLayoutConstraint.activate([
//            subtitleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 40)
//        ])
//        
//        let createAccount = UIButton()
//        createAccount.setTitle("CREATE AN ACCOUNT ", for: .normal)
//        createAccount.backgroundColor = .blue
//        createAccount.layer.cornerRadius = 10
//        self.view.addSubview(createAccount)
//        createAccount.translatesAutoresizingMaskIntoConstraints = false
//        
//        //Constraints for createAccount
//        NSLayoutConstraint.activate([
//            createAccount.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            createAccount.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -150),
//            createAccount.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8),
//            createAccount.heightAnchor.constraint(equalToConstant: 50)
//        ])
//        
//        let existingAccount = UIButton()
//        existingAccount.setTitle("I have an account", for: .normal)
//        existingAccount.backgroundColor = .white
//        existingAccount.setTitleColor(.blue, for: .normal)
//        self.view.addSubview(existingAccount)
//        existingAccount.translatesAutoresizingMaskIntoConstraints = false
//        
//        //Constraints for existingAccount
//        NSLayoutConstraint.activate([
//            existingAccount.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            existingAccount.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
//            existingAccount.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8),
//            existingAccount.heightAnchor.constraint(equalToConstant: 30)
//        ])
//        
//    }
//}
//
