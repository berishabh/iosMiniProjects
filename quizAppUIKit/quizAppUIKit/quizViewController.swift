import UIKit

struct QuizQuestion {
    let question: String
    let options: [String]
    let answer: String
}

let quiz = [
    QuizQuestion(question: "Who is the Prime Minister of India?", options: ["Rahul Gandhi", "Narendra Modi"], answer: "Narendra Modi"),
    QuizQuestion(question: "What is the capital of France?", options: ["Berlin", "Paris"], answer: "Paris"),
    QuizQuestion(question: "What is the name of the largest bone in the human body?", options: ["Femur", "Humerus"], answer: "Femur"),
    QuizQuestion(question: "Who wrote the famous novel 'The Catcher in the Rye'?", options: ["J.D. Salinger", "Ernest Hemingway"], answer: "J.D. Salinger"),
    QuizQuestion(question: "What is the name of the largest desert in the world?", options: ["Sahara", "Gobi"], answer: "Sahara"),
    QuizQuestion(question: "What is the term for a word that sounds the same as another word but has a different meaning and spelling?", options: ["Homonym", "Synonym"], answer: "Homonym"),
    QuizQuestion(question: "What is the name of the largest animal that ever lived?", options: ["Blue whale", "Tyrannosaurus rex"], answer: "Blue whale"),
]

class QuizViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let questionLabel = UILabel()
//        questionLabel.text = quiz[1].question
        questionLabel.font = UIFont.systemFont(ofSize: 40)
        questionLabel.textColor = .systemBrown
        questionLabel.textAlignment = .center
        questionLabel.numberOfLines = 0
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(questionLabel)
        NSLayoutConstraint.activate([
            questionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            questionLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.17),
            questionLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 10),
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        

        let questionProgressView = UIProgressView()
        questionProgressView.backgroundColor = .systemGray
        questionProgressView.progressTintColor = .darkGray
        questionProgressView.trackTintColor = .red
        questionProgressView.progress = Float(4)/Float(2)
        questionProgressView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(questionProgressView)
        NSLayoutConstraint.activate([
            questionProgressView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            questionProgressView.heightAnchor.constraint(equalToConstant: 2),
            questionProgressView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 10),
            questionProgressView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        let optionOneButton = UIButton()
//        optionOneButton.setTitle(quiz[1].options[0], for: .normal)
        optionOneButton.setTitleColor(.white, for: .normal)
        optionOneButton.backgroundColor = .systemBrown
        optionOneButton.titleLabel?.textAlignment = .center
        optionOneButton.layer.cornerRadius = 25
        
        
        optionOneButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(optionOneButton)
        NSLayoutConstraint.activate([
            optionOneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            optionOneButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10),
            optionOneButton.topAnchor.constraint(equalToSystemSpacingBelow: questionLabel.topAnchor, multiplier: 20),
            optionOneButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        let optionTwoButton = UIButton()
        //      optionTwoButton.setTitle(quiz[1].options[1], for: .normal)
        optionTwoButton.setTitleColor(.white, for: .normal)
        optionTwoButton.backgroundColor = .systemBrown
        optionTwoButton.titleLabel?.textAlignment = .center
        optionTwoButton.layer.cornerRadius = 25
        optionTwoButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(optionTwoButton)
        NSLayoutConstraint.activate([
            optionTwoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            optionTwoButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10),
            optionTwoButton.topAnchor.constraint(equalToSystemSpacingBelow: optionOneButton.topAnchor, multiplier: 15),
            optionTwoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        func updateUI() {
          questionLabel.text = quiz[6].question
          // Set the option buttons titles to the current options
          optionOneButton.setTitle(quiz[6].options[0], for: .normal)
          optionTwoButton.setTitle(quiz[6].options[1], for: .normal)
          // Set the progress view progress to the current progress
          questionProgressView.progress = 7 / Float(quiz.count)
        }
        
        updateUI()
    }
}
