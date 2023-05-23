import UIKit

class bankDetailsScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        //!font and weight left
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
        
        let bankDetailsLabel = UILabel()
        bankDetailsLabel.text =
        

//        let imageVector = UIImage(named: "leftFacingArrow.png")
//        let resizedImage = imageVector?.resizeImage(targetSize: CGSize(width: 16.3, height: 8.15))
//        let arrowImage = UIImageView(image: imageVector)
//        arrowImage.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(arrowImage)
//        NSLayoutConstraint.activate([
//            arrowImage.widthAnchor.constraint(equalToConstant: 16.3),
//            arrowImage.heightAnchor.constraint(equalToConstant: 8.15),
//            arrowImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 72),
//            arrowImage.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
//        ])
//
    }
}



