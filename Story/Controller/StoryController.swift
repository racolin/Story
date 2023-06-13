//
//  ViewController.swift
//  Story
//
//  Created by Administrator on 13/06/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelStory: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    
    var brain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


    @IBAction func onChoicePressed(_ sender: UIButton) {
        brain.check(choice: sender.currentTitle ?? "")
        updateUI()
    }
    
    func updateUI() {
        
        labelStory.text = brain.getStory()
        answer1.setTitle(brain.getChoice1(), for: .normal)
        answer2.setTitle(brain.getChoice2(), for: .normal)
    }
}

