//Written by Rishabh Dubey

import UIKit

var question: String = "Who is the Prime Minister of India?"
var options: [String] = ["Rahul Gandhi", "Narendra Modi"]
var answer: String  = "Narendra Modi"
var score: Int = 0

class QuizViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let questionLabel = UILabel(frame: .zero)
        questionLabel.text = question
        questionLabel.font = UIFont.systemFont(ofSize: 40)
        questionLabel.textColor = .systemBrown
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 0

        let questionProgressView = UIProgressView(frame: .zero)
        questionProgressView.backgroundColor = .systemGray
        questionProgressView.tintColor = .systemCyan
        questionProgressView.progress = Float(4)/Float(2)

        let optionOneButton = UIButton(frame: .zero)
        optionOneButton.setTitle(options[0], for: .normal)
        optionOneButton.setTitleColor(.white, for: .normal)
        optionOneButton.backgroundColor = .systemBrown

        let optionTwoButton = UIButton(frame: .zero)
        optionTwoButton.setTitle(options[1], for: .normal)
        optionTwoButton.setTitleColor(.white, for: .normal)
        optionTwoButton.backgroundColor = .systemBrown

        self.view.addSubview(questionLabel)
        self.view.addSubview(questionProgressView)
        self.view.addSubview(optionOneButton)
        self.view.addSubview(optionTwoButton)
        
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionProgressView.translatesAutoresizingMaskIntoConstraints = false
        optionOneButton.translatesAutoresizingMaskIntoConstraints = false
        optionTwoButton.translatesAutoresizingMaskIntoConstraints = false

        let labelXConstraint = NSLayoutConstraint(item: questionLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1.0, constant: 0.0)

        let labelTopConstraint = NSLayoutConstraint(item: questionLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 20)

        let labelWidthConstraint = NSLayoutConstraint(item: questionLabel, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.8, constant: 40.0)
//
        let labelHieghtConstraint = NSLayoutConstraint(item: questionLabel, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.2, constant: 0.0)
        
        NSLayoutConstraint.activate([labelXConstraint,labelTopConstraint,labelWidthConstraint,labelHieghtConstraint])
    }
}
