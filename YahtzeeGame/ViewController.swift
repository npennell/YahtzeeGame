//
//  ViewController.swift
//  YahtzeeGame
//
//  Created by Nichol Pennell on 2020-05-29.
//  Copyright © 2020 Nichol Pennell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Dice Outlets
    @IBOutlet weak var diceOne: UIButton!
    @IBOutlet weak var diceTwo: UIButton!
    @IBOutlet weak var diceThree: UIButton!
    @IBOutlet weak var diceFour: UIButton!
    @IBOutlet weak var diceFive: UIButton!
    
    
    //Scoreboard
    //Top Score Labels
    @IBOutlet weak var onesLabel: UILabel!
    @IBOutlet weak var twosLabel: UILabel!
    @IBOutlet weak var threesLabel: UILabel!
    @IBOutlet weak var foursLabel: UILabel!
    @IBOutlet weak var fivesLabel: UILabel!
    @IBOutlet weak var sixesLabel: UILabel!
    @IBOutlet weak var bonusLabel: UILabel!
    @IBOutlet weak var topTotalLabel: UILabel!
    
    //Top Score Values
    @IBOutlet weak var onesValue: UILabel!
    @IBOutlet weak var twosValue: UILabel!
    @IBOutlet weak var threesValue: UILabel!
    @IBOutlet weak var foursValue: UILabel!
    @IBOutlet weak var fivesValue: UILabel!
    @IBOutlet weak var sixesValue: UILabel!
    @IBOutlet weak var bonusValue: UILabel!
    @IBOutlet weak var topTotalValue: UILabel!
    
    //Bottom Score Labels
    @IBOutlet weak var threeKindLabel: UILabel!
    @IBOutlet weak var fourKindLabel: UILabel!
    @IBOutlet weak var fullLabel: UILabel!
    @IBOutlet weak var smStraightLabel: UILabel!
    @IBOutlet weak var lgStraightLabel: UILabel!
    @IBOutlet weak var yahtzeeLabel: UILabel!
    @IBOutlet weak var chanceLabel: UILabel!
    @IBOutlet weak var bottomTotalLabel: UILabel!
    
    //Bottom Score Values
    @IBOutlet weak var threeKindValue: UILabel!
    @IBOutlet weak var fourKindValue: UILabel!
    @IBOutlet weak var fullHouseValue: UILabel!
    @IBOutlet weak var smStraightValue: UILabel!
    @IBOutlet weak var lgStraightValue: UILabel!
    @IBOutlet weak var yahtzeeValue: UILabel!
    @IBOutlet weak var chanceValue: UILabel!
    @IBOutlet weak var bottomTotalValue: UILabel!
    
    //various labels/buttons
    @IBOutlet weak var rollsLeft: UILabel!
    
    //die values
    var dieOneNum = 1
    var dieTwoNum = 1
    var dieThreeNum = 1
    var dieFourNum = 1
    var dieFiveNum = 1
    
    //Check if dice have been clicked
    var dieOneClicked:Bool = false
    var dieTwoClicked:Bool = false
    var dieThreeClicked:Bool = false
    var dieFourClicked:Bool = false
    var dieFiveClicked:Bool = false
    
    var rollsRemaining = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //onesLabel.isUserInteractionEnabled = true
        let oneLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(oneLabelClicked))
        oneLabelTapped.numberOfTapsRequired = 1
        onesLabel.addGestureRecognizer(oneLabelTapped)
    }

    //Roll Button clicked
    //randomly generates roll for the five dice
    @IBAction func rollButton(_ sender: Any) {
        //don't re-roll if no more rolls left
        if rollsRemaining > 0 {
            
            dieOneNum = Int.random(in: 1...6)
            dieTwoNum = Int.random(in: 1...6)
            dieThreeNum = Int.random(in: 1...6)
            dieFourNum =  Int.random(in: 1...6)
            dieFiveNum = Int.random(in: 1...6)
            
            if dieOneClicked == false {
                diceOne.setImage(UIImage(named: "Dice\(dieOneNum)"), for: .normal)
            }
            if dieTwoClicked == false {
                diceTwo.setImage(UIImage(named: "Dice\(dieTwoNum)"), for: .normal)
            }
            if dieThreeClicked == false {
                diceThree.setImage(UIImage(named: "Dice\(dieThreeNum)"), for: .normal)
            }
            if dieFourClicked == false {
                diceFour.setImage(UIImage(named: "Dice\(dieFourNum)"), for: .normal)
            }
            if dieFiveClicked == false {
                diceFive.setImage(UIImage(named: "Dice\(dieFiveNum)"), for: .normal)
            }
            
            //decreas number of rolls remaining
            rollsRemaining -= 1
            rollsLeft.text = "\(rollsRemaining) Rolls Left"
        }
        else {
            rollsLeft.text = "Take score before rolling!"
        }
    }
    
    //function to roll/not roll die one depending on if clicked
    @IBAction func diceOneClicked(_ sender: Any) {
        if dieOneClicked == false {
            dieOneClicked = true
        }
        else {
            dieOneClicked = false
        }
    }
    
    @IBAction func diceTwoClicked(_ sender: Any) {
        if dieTwoClicked == false {
            dieTwoClicked = true
        }
        else {
            dieTwoClicked = false
        }
    }
    
    @IBAction func diceThreeClicked(_ sender: Any) {
        if dieThreeClicked == false {
            dieThreeClicked = true
        }
        else {
            dieThreeClicked = false
        }
    }
    
    @IBAction func diceFourClicked(_ sender: Any) {
        if dieFourClicked == false {
            dieFourClicked = true
        }
        else {
            dieFourClicked = false
        }
    }
    
    @IBAction func diceFiveClicked(_ sender: Any) {
        if dieFiveClicked == false {
            dieFiveClicked = true
        }
        else {
            dieFiveClicked = false
        }
    }
    
    //Scoring
    @objc func oneLabelClicked(){
        onesValue.text = "3"
    }
    
}

