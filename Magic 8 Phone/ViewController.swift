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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let answers : [String] = ["As I see it, yes.","Ask again later.","Better not tell you now.","Cannot predict now.","Concentrate and ask again.","Don't count on it.","It is certain.","It is decidedly so."]
    
    @IBAction func swipeRight(_ sender: Any) {
        
        let number: Int = Int.random(in: 0 ..< 7)
        
        answerTextView.text = answers[number]
        
    }
    
    @IBAction func swipeLeft(_ sender: Any) {
        
        let number: Int = Int.random(in: 0 ..< 7)
        
        answerTextView.text = answers[number]
        
    }
    

}

