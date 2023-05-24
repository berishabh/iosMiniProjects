import UIKit

class bankDetailsScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        //!font and weight left for headingLabel
        //!text in all labels half visible
        //top left triangle svg left
        //circle around plus left
//        use a UITableViewController or a UICollectionViewController to display a list of bank accounts. Then you can use a custom UITableViewCell or UICollectionViewCell to show the bank name, logo, and account number.
        
        
        let headingLabel = UILabel()
        let attributedString = NSMutableAttributedString(string: "Bank Details")
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 12
        attributedString.addAttribute(.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedString.length))
        
        let font = UIFont.boldSystemFont(ofSize: 24)
        attributedString.addAttribute(.font, value: font, range: NSMakeRange(0, attributedString.length))
        
        let color = UIColor.black
        attributedString.addAttribute(.foregroundColor, value: color, range: NSMakeRange(0, attributedString.length))
        headingLabel.attributedText = attributedString
        
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(headingLabel)
        NSLayoutConstraint.activate([
            headingLabel.widthAnchor.constraint(equalToConstant: 149),
            headingLabel.heightAnchor.constraint(equalToConstant: 30),
            headingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
            headingLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 51)
        ])
    
        let outerBox = UIView()
        outerBox.backgroundColor = UIColor(named: "#E0E0E0")
        outerBox.layer.borderWidth = 1
        outerBox.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        outerBox.layer.cornerRadius = 16
        
        outerBox.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(outerBox)
        
        NSLayoutConstraint.activate([
            outerBox.widthAnchor.constraint(equalToConstant: 339),
            outerBox.heightAnchor.constraint(equalToConstant: 177),
            outerBox.topAnchor.constraint(equalTo: view.topAnchor, constant: 116),
            outerBox.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 27)
        ])
        
        let bankLogo1 = UIImageView()
        bankLogo1.image = UIImage(named: "sbiLogo")
        bankLogo1.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(bankLogo1)
        NSLayoutConstraint.activate([
            bankLogo1.widthAnchor.constraint(equalToConstant: 50),
            bankLogo1.heightAnchor.constraint(equalToConstant: 17.44),
            bankLogo1.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 27),
            bankLogo1.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 19)
        ])

        
        let bankName1 = UILabel()
        bankName1.text = "STATE BANK OF INDIA"
        bankName1.font = UIFont(name: "Mulish-Bold", size: 14)
        bankName1.textColor = .black
        bankName1.textAlignment = .center
        
        bankName1.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(bankName1)
        
        NSLayoutConstraint.activate([
            bankName1.widthAnchor.constraint(equalToConstant: 154),
            bankName1.heightAnchor.constraint(equalToConstant: 18),
            bankName1.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 28),
            bankName1.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 84)
        
        ])
        
        let accountNumber1 = UILabel()
        accountNumber1.text = "XXXXX03554"
        accountNumber1.font = UIFont(name: "Mulish-Medium", size: 14)
        accountNumber1.textColor = .black
        accountNumber1.textAlignment = .center
        accountNumber1.alpha = 0.5
        
        
        accountNumber1.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(accountNumber1)
        
        NSLayoutConstraint.activate([
            accountNumber1.widthAnchor.constraint(equalToConstant: 88),
            accountNumber1.heightAnchor.constraint(equalToConstant: 18),
            accountNumber1.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 51),
            accountNumber1.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 84)
        
        ])
        
        let bankLogo2 = UIImageView()
        bankLogo2.image = UIImage(named: "yesBankLogo")
        bankLogo2.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(bankLogo2)
        NSLayoutConstraint.activate([
            bankLogo2.widthAnchor.constraint(equalToConstant: 50),
            bankLogo2.heightAnchor.constraint(equalToConstant: 18.67),
            bankLogo2.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 105),
            bankLogo2.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 19)
        ])
        
        let bankName2 = UILabel()
        bankName2.text = "YES BANK"
        bankName2.font = UIFont(name: "Mulish-Bold", size: 14)
        bankName2.textColor = .black
        bankName2.textAlignment = .center
        
        bankName2.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(bankName2)
        
        NSLayoutConstraint.activate([
            bankName2.widthAnchor.constraint(equalToConstant: 71),
            bankName2.heightAnchor.constraint(equalToConstant: 18),
            bankName2.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 107),
            bankName2.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 84)
        
        ])
        
        let accountNumber2 = UILabel()
        accountNumber2.text = "XXXXX03554"
        accountNumber2.font = UIFont(name: "Mulish-Medium", size: 14)
        accountNumber2.textColor = .black
        accountNumber2.textAlignment = .center
        accountNumber2.alpha = 0.5
        
        
        accountNumber2.translatesAutoresizingMaskIntoConstraints = false
        outerBox.addSubview(accountNumber2)
        
        NSLayoutConstraint.activate([
            accountNumber2.widthAnchor.constraint(equalToConstant: 88),
            accountNumber2.heightAnchor.constraint(equalToConstant: 18),
            accountNumber2.topAnchor.constraint(equalTo: outerBox.topAnchor, constant: 131),
            accountNumber2.leftAnchor.constraint(equalTo: outerBox.leftAnchor, constant: 84)
        ])

        let addButton = UIButton()
        addButton.setTitle("Add another bank account", for: .normal)
        addButton.titleLabel?.font = UIFont(name: "Mulish-Bold", size: 16)
        addButton.setTitleColor((UIColor(red: 0.149, green: 0.443, blue: 1, alpha: 1)), for: .normal)
        addButton.backgroundColor = .white
        addButton.layer.cornerRadius = 26
        addButton.layer.borderColor = UIColor(red: 0.149, green: 0.443, blue: 1, alpha: 1).cgColor
        addButton.layer.borderWidth = 1
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -10, bottom: 0, right: 0)
        addButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)

        view.addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            addButton.widthAnchor.constraint(equalToConstant: 339),
            addButton.heightAnchor.constraint(equalToConstant: 52),
            addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
            addButton.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 27)
        ])


    }
}



