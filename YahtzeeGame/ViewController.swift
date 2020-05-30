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
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var diceThree: UIImageView!
    @IBOutlet weak var diceFour: UIImageView!
    @IBOutlet weak var diceFive: UIImageView!
    
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
    
        //setting up dice gestures
        let diceOneTapped = UITapGestureRecognizer.init(target: self, action: #selector(diceOneClicked))
        diceOneTapped.numberOfTapsRequired = 1
        diceOne.addGestureRecognizer(diceOneTapped)
        
        let diceTwoTapped = UITapGestureRecognizer.init(target: self, action: #selector(diceTwoClicked))
        diceTwoTapped.numberOfTapsRequired = 1
        diceTwo.addGestureRecognizer(diceTwoTapped)
        
        let diceThreeTapped = UITapGestureRecognizer.init(target: self, action: #selector(diceThreeClicked))
        diceThreeTapped.numberOfTapsRequired = 1
        diceThree.addGestureRecognizer(diceThreeTapped)
        
        let diceFourTapped = UITapGestureRecognizer.init(target: self, action: #selector(diceFourClicked))
        diceFourTapped.numberOfTapsRequired = 1
        diceFour.addGestureRecognizer(diceFourTapped)
        
        let diceFiveTapped = UITapGestureRecognizer.init(target: self, action: #selector(diceFiveClicked))
        diceFiveTapped.numberOfTapsRequired = 1
        diceFive.addGestureRecognizer(diceFiveTapped)
        
        
        //setting up score label gestures
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
                diceOne.image = UIImage(named: "Dice\(dieOneNum)")
            }
            if dieTwoClicked == false {
                diceTwo.image = UIImage(named: "Dice\(dieTwoNum)")
            }
            if dieThreeClicked == false {
                diceThree.image = UIImage(named: "Dice\(dieThreeNum)")
            }
            if dieFourClicked == false {
                diceFour.image = UIImage(named: "Dice\(dieFourNum)")
            }
            if dieFiveClicked == false {
                diceFive.image = UIImage(named: "Dice\(dieFiveNum)")
            }
            
            //decreas number of rolls remaining
            rollsRemaining -= 1
            rollsLeft.text = "\(rollsRemaining) Rolls Left"
        }
        else {
            rollsLeft.text = "Take score before rolling!"
        }
    }
    
    //Functionality of dice when clicked
    @objc func diceOneClicked(){
        if dieOneClicked == false {
            dieOneClicked = true
        }
        else {
            dieOneClicked = false
        }
    }
    
    @objc func diceTwoClicked(){
        if dieTwoClicked == false {
            dieTwoClicked = true
        }
        else {
            dieTwoClicked = false
        }
    }
    
    @objc func diceThreeClicked(){
        if dieThreeClicked == false {
            dieThreeClicked = true
        }
        else {
            dieThreeClicked = false
        }
    }
    
    @objc func diceFourClicked(){
        if dieFourClicked == false {
            dieFourClicked = true
        }
        else {
            dieFourClicked = false
        }
    }
    
    @objc func diceFiveClicked(){
        if dieFiveClicked == false {
            dieFiveClicked = true
        }
        else {
            dieFiveClicked = false
        }
    }
    
    //Scoring
    @objc func oneLabelClicked(){
        if onesValue.text == "0"{
            onesValue.text = "1"
            rollsRemaining = 3
            resetRoll()
        }
    }
    
    @objc func twoLabelClicked(){
        if twosValue.text == "0"{
            twosValue.text = "2"
            rollsRemaining = 3
            resetRoll()
        }
    }
    
    @objc func threeLabelClicked(){
        if threesValue.text == "0"{
            threesValue.text = "3"
            rollsRemaining = 3
            resetRoll()
        }
    }
    
    @objc func fourLabelClicked(){
        if foursValue.text == "0"{
            foursValue.text = "4"
            rollsRemaining = 3
            resetRoll()
        }
    }
    
    @objc func fiveLabelClicked(){
        if fivesValue.text == "0"{
            fivesValue.text = "5"
            rollsRemaining = 3
            resetRoll()
        }
    }
    
    
    func resetRoll(){
        rollsLeft.text = "\(rollsRemaining) Rolls Left"
        
        //reset the dice clicks
        dieOneClicked = false
        dieTwoClicked = false
        dieThreeClicked = false
        dieFourClicked = false
        dieFiveClicked = false
    }
}

