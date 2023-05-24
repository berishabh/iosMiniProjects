import UIKit

class editProfileScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        
        let navigationBar = UINavigationBar()
        navigationBar.barTintColor = .white
        navigationBar.shadowImage = UIImage()
        // Create a navigation item
        let navigationItem = UINavigationItem(title: "Edit Profile")
        navigationItem.titleView?.backgroundColor = .white

        // Create a left bar button item with a cross image
        let leftButton = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: nil, action: nil)

        // Create a right bar button item with a right image
        let rightButton = UIBarButtonItem(image: UIImage(systemName: "arrow.right"), style: .plain, target: nil, action: nil)


        // Set the left and right bar button items
        navigationItem.leftBarButtonItem = leftButton
        navigationItem.rightBarButtonItem = rightButton

        // Add the navigation item to the navigation bar
        navigationBar.items = [navigationItem]

        // Add the navigation bar to the view
        view.addSubview(navigationBar)

        
        // Turn off autoresizing mask translation
        navigationBar.translatesAutoresizingMaskIntoConstraints = false

        // Activate constraints for the navigation bar
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

//
//        let editLabel = UILabel()
//        editLabel.text = "Edit Profile"
//        editLabel.font = UIFont(name: "Mulish-Bold", size: 20)
//        editLabel.textColor = .black
//        editLabel.textAlignment = .center
//
//        editLabel.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(editLabel)
//
//        NSLayoutConstraint.activate([
//            editLabel.widthAnchor.constraint(equalToConstant: 104),
//            editLabel.heightAnchor.constraint(equalToConstant: 25),
//            editLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 63),
//            editLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 55)
//
//        ])
    }
}




