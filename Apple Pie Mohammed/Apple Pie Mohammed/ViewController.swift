//
//  ViewController.swift
//  Apple Pie Mohammed
//
//  Created by Mohammed Brohi on 3/10/19.
//  Copyright © 2019 Mohammed Brohi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var lettersButton: [UIButton]!
    
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandenscent", "bug", "progress"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentGame: Game!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    
    sender.isEnabled = false
    let letterString = sender.title(for: .normal)!
    let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
    
        updateUI()
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    newRound()
    
}

    func newRound() {
        
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        
        updateUI()
        
        
    }

    func updateUI() {
        
        //corredt
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }
}

