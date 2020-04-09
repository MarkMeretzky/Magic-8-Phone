//
//  ViewController.swift
//  Magic 8 Phone
//
//  Created by Jeffrey  on 4/8/20.
//  Copyright © 2020 BMCC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var answerTextView: UITextView!
    
    let leftAnswers: [String] = [
        "As I see it, yes.",
        "Ask again later.",
        "Better not tell you now.",
        "Cannot predict now.",
        "Concentrate and ask again.",
        "Don't count on it.",
        "It is certain.",
        "It is decidedly so.",
        "Ask me when you have a present for me"
    ];
    
    let rightAnswers: [String] = [
        "No taxes!",
        "No government!",
        "Big military!",
        "No givernment oversight of Wall Street!"
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        print(sender.direction);
        
        
        if sender.direction == .left {
            let number: Int = Int.random(in: 0 ..< leftAnswers.count)
            answerTextView.text = leftAnswers[number];
        } else {
            let number: Int = Int.random(in: 0 ..< rightAnswers.count)
            answerTextView.text = rightAnswers[number];
        }
            
        //answerTextView.text = answers[number]
        
    }
}
