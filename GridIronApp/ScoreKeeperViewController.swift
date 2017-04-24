//
//  ScoreKeeperViewController.swift
//  GridIronApp
//
//  Created by Tennant Shaw on 4/24/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

typealias Game = (team1Score: Int, team2Score: Int)

class ScoreKeeperViewController: UIViewController {

    @IBOutlet weak var team2Button: UIButton!
    @IBOutlet weak var team1Button: UIButton!

    var game: Game = (0, 0) {
        didSet {
            updateDisplay()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateDisplay()
    }
    
    func updateDisplay() {
        team1Button.setTitle(game.team1Score.description, for: .normal)
        team2Button.setTitle(game.team2Score.description, for: .normal)
    }
    
    @IBAction func TDTeam1(_ sender: UIButton) {
        game.team1Score += 6
    }
    
    @IBAction func TDTeam2(_ sender: UIButton) {
        game.team2Score += 6
    }
    
    @IBAction func ExtraPointTeam1(_ sender: UIButton) {
        game.team1Score += 1
    }
    
    @IBAction func ExtraPointTeam2(_ sender: UIButton) {
        game.team2Score += 1
    }
    
    @IBAction func FieldGoalTeam1(_ sender: UIButton) {
        game.team1Score += 3
    }
    
    @IBAction func FieldGoalTeam2(_ sender: UIButton) {
        game.team2Score += 3
    }
    
    @IBAction func SafetyTeam1(_ sender: UIButton) {
        game.team1Score += 2
    }
    
    @IBAction func SafetyTeam2(_ sender: UIButton) {
        game.team2Score += 2
    }
    
    @IBAction func TwoPointConversionTeam1(_ sender: UIButton) {
        game.team1Score += 2
    }
    
    @IBAction func TwoPointConversionTeam2(_ sender: UIButton) {
        game.team2Score += 2
    }
    
    @IBAction func ResetScores(_ sender: UIButton) {
        game.team1Score = 0
        game.team2Score = 0
    }
}








