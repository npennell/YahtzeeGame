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
    
    @IBOutlet weak var finalScore: UILabel!
    
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
    
    //check if scores have been taken
    var onesScored = false
    var twosScored = false
    var threesScored = false
    var foursScored = false
    var fivesScored = false
    var sixesScored = false
    var threeKindScored = false
    var fourKindScored = false
    var fullHouseScored = false
    var smStraighScored = false
    var lgStraightScored = false
    var yahtzeeScored = false
    var chanceScored = false
    
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
        
        let twoLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(twoLabelClicked))
        twoLabelTapped.numberOfTapsRequired = 1
        twosLabel.addGestureRecognizer(twoLabelTapped)
        
        let threeLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(threeLabelClicked))
        threeLabelTapped.numberOfTapsRequired = 1
        threesLabel.addGestureRecognizer(threeLabelTapped)
        
        let fourLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(fourLabelClicked))
        fourLabelTapped.numberOfTapsRequired = 1
        foursLabel.addGestureRecognizer(fourLabelTapped)
        
        let fiveLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(fiveLabelClicked))
        fiveLabelTapped.numberOfTapsRequired = 1
        fivesLabel.addGestureRecognizer(fiveLabelTapped)
        
        let sixLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(sixLabelClicked))
        sixLabelTapped.numberOfTapsRequired = 1
        sixesLabel.addGestureRecognizer(sixLabelTapped)
        
        let threeKindLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(threeKindLabelClicked))
        threeKindLabelTapped.numberOfTapsRequired = 1
        threeKindLabel.addGestureRecognizer(threeKindLabelTapped)
        
        let fourKindLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(fourKindLabelClicked))
        fourKindLabelTapped.numberOfTapsRequired = 1
        fourKindLabel.addGestureRecognizer(fourKindLabelTapped)
        
        let fullHouseLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(fullHouseLabelClicked))
        fullHouseLabelTapped.numberOfTapsRequired = 1
        fullLabel.addGestureRecognizer(fullHouseLabelTapped)
        
        let smStraightLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(smStraightLabelClicked))
        smStraightLabelTapped.numberOfTapsRequired = 1
        smStraightLabel.addGestureRecognizer(smStraightLabelTapped)
        
        let lgStraightLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(lgStraightLabelClicked))
        lgStraightLabelTapped.numberOfTapsRequired = 1
        lgStraightLabel.addGestureRecognizer(lgStraightLabelTapped)
        
        let yahtzeeLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(yahtzeeLabelClicked))
        yahtzeeLabelTapped.numberOfTapsRequired = 1
        yahtzeeLabel.addGestureRecognizer(yahtzeeLabelTapped)
        
        let chanceLabelTapped = UITapGestureRecognizer.init(target: self, action: #selector(chanceLabelClicked))
        chanceLabelTapped.numberOfTapsRequired = 1
        chanceLabel.addGestureRecognizer(chanceLabelTapped)
    }

    //Roll Button clicked
    @IBAction func rollButton(_ sender: Any) {
        //don't re-roll if no more rolls left
        if rollsRemaining > 0 {
            
            if dieOneClicked == false {
                dieOneNum = Int.random(in: 1...6)
                diceOne.image = UIImage(named: "Dice\(dieOneNum)")
            }
            if dieTwoClicked == false {
                dieTwoNum = Int.random(in: 1...6)
                diceTwo.image = UIImage(named: "Dice\(dieTwoNum)")
            }
            if dieThreeClicked == false {
                dieThreeNum = Int.random(in: 1...6)
                diceThree.image = UIImage(named: "Dice\(dieThreeNum)")
            }
            if dieFourClicked == false {
                dieFourNum =  Int.random(in: 1...6)
                diceFour.image = UIImage(named: "Dice\(dieFourNum)")
            }
            if dieFiveClicked == false {
                dieFiveNum = Int.random(in: 1...6)
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
            diceOne.image = UIImage(named:"GreyDice\(dieOneNum)")
        }
        else {
            dieOneClicked = false
            diceOne.image = UIImage(named:"Dice\(dieOneNum)")
        }
    }
    
    @objc func diceTwoClicked(){
        if dieTwoClicked == false {
            dieTwoClicked = true
            diceTwo.image = UIImage(named:"GreyDice\(dieTwoNum)")
        }
        else {
            dieTwoClicked = false
            diceTwo.image = UIImage(named:"Dice\(dieTwoNum)")
        }
    }
    
    @objc func diceThreeClicked(){
        if dieThreeClicked == false {
            dieThreeClicked = true
            diceThree.image = UIImage(named:"GreyDice\(dieThreeNum)")
        }
        else {
            dieThreeClicked = false
            diceThree.image = UIImage(named:"Dice\(dieThreeNum)")
        }
    }
    
    @objc func diceFourClicked(){
        if dieFourClicked == false {
            dieFourClicked = true
            diceFour.image = UIImage(named:"GreyDice\(dieFourNum)")
        }
        else {
            dieFourClicked = false
            diceFour.image = UIImage(named:"Dice\(dieFourNum)")
        }
    }
    
    @objc func diceFiveClicked(){
        if dieFiveClicked == false {
            dieFiveClicked = true
            diceFive.image = UIImage(named:"GreyDice\(dieFiveNum)")
        }
        else {
            dieFiveClicked = false
            diceFive.image = UIImage(named:"Dice\(dieFiveNum)")
        }
    }
    
    //Functionality when the labels are clicked
    @objc func oneLabelClicked(){
        if onesScored == false{
            onesScored = true
            let score = checkForValue(value: 1)
            onesValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func twoLabelClicked(){
        if twosScored == false{
            twosScored = true
            let score = checkForValue(value: 2)
            twosValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func threeLabelClicked(){
        if threesScored == false{
            threesScored = true
            let score = checkForValue(value: 3)
            threesValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func fourLabelClicked(){
        if foursScored == false{
            foursScored = true
            let score = checkForValue(value: 4)
            foursValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func fiveLabelClicked(){
        if fivesScored == false{
            fivesScored = true
            let score = checkForValue(value: 5)
            fivesValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func sixLabelClicked(){
        if sixesScored == false{
            sixesScored = true
            let score = checkForValue(value: 6)
            sixesValue.text = "\(score)"
            resetRoll()
        }
    }
    //TODO: validate these scores
    @objc func threeKindLabelClicked(){
        if threeKindScored == false{
            threeKindScored = true
            let score = calculateKind(typeOfKind: 3)
            threeKindValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func fourKindLabelClicked(){
        if fourKindScored == false{
            fourKindScored = true
            let score = calculateKind(typeOfKind: 4)
            fourKindValue.text = "\(score)"
            resetRoll()
        }
    }
    @objc func fullHouseLabelClicked(){
        if fullHouseScored == false{
            fullHouseScored = true
            fullHouseValue.text = "25"
            resetRoll()
        }
    }
    @objc func smStraightLabelClicked(){
        if smStraighScored == false{
            smStraighScored = true
            smStraightValue.text = "30"
            resetRoll()
        }
    }
    @objc func lgStraightLabelClicked(){
        if lgStraightScored == false{
            lgStraightScored = true
            lgStraightValue.text = "40"
            resetRoll()
        }
    }
    @objc func yahtzeeLabelClicked(){
        if yahtzeeScored == false{
            yahtzeeScored = true
            yahtzeeCheck()
            resetRoll()
        }
    }
    @objc func chanceLabelClicked(){
        if chanceScored == false{
            chanceScored = true
            let score = dieOneNum + dieTwoNum + dieThreeNum + dieFourNum + dieFiveNum
            chanceValue.text = "\(score)"
            resetRoll()
        }
    }
    
    //check the dice values to score
    func checkForValue(value: Int) -> Int{
        var score = 0
        if dieOneNum == value {
            score += value
        }
        if dieTwoNum == value {
            score += value
        }
        if dieThreeNum == value {
            score += value
        }
        if dieFourNum == value {
            score += value
        }
        if dieFiveNum == value {
            score += value
        }

        return score
    }
    
    func calculateKind(typeOfKind:Int) -> Int{
        var kindValid = false
        var score = 0
        
        //put dice values in array
        let diceValues = [dieOneNum, dieTwoNum, dieThreeNum, dieFourNum, dieFiveNum]
        
        //check for three kind
        for i in 1...6 {
            var count = 0
            for j in 0...4 {
                if diceValues[j] == i {
                    count += 1
                }
                if count > (typeOfKind - 1) {
                    kindValid = true
                }
            }
        }
        
        if kindValid == true {
            score = dieOneNum + dieTwoNum + dieThreeNum + dieFourNum + dieFiveNum
        }
        else {
            score = 0
        }
        
        return score
    }
    
    func calculateFourKind(){
        let score = dieOneNum + dieTwoNum + dieThreeNum + dieFourNum + dieFiveNum
        fourKindValue.text = "\(score)"
    }
    
    func yahtzeeCheck(){
        if dieOneNum == dieTwoNum && dieOneNum == dieThreeNum && dieOneNum == dieFourNum
            && dieOneNum == dieFiveNum {
            yahtzeeValue.text = "50"
        }
        else {
            yahtzeeValue.text = "0"
        }
    }
    
    //reset the dice and label for next turn
    func resetRoll(){
        rollsRemaining = 3
        rollsLeft.text = "\(rollsRemaining) Rolls Left"
        
        if checkTopFull() == true && checkBottomFull() == true {
            var score = 0
            let top:Int? = Int(topTotalValue.text!)
            let bottom:Int? = Int(bottomTotalValue.text!)
            score = Int(top!) + Int(bottom!)
            finalScore.text = "Final Score\n\(score)"
        }
        
        //reset the dice clicks
        dieOneClicked = false
        dieTwoClicked = false
        dieThreeClicked = false
        dieFourClicked = false
        dieFiveClicked = false
        diceOne.image = UIImage(named:"Dice1")
        diceTwo.image = UIImage(named:"Dice1")
        diceThree.image = UIImage(named:"Dice1")
        diceFour.image = UIImage(named:"Dice1")
        diceFive.image = UIImage(named:"Dice1")
    }
    
    func checkTopFull() -> Bool{
        if onesScored == true && twosScored == true && threesScored == true
            && foursScored == true && fivesScored == true && sixesScored == true {
            var score = 0
            let ones:Int? = Int(onesValue.text!)
            let twos:Int? = Int(twosValue.text!)
            let threes:Int? = Int(threesValue.text!)
            let fours:Int? = Int(foursValue.text!)
            let fives:Int? = Int(fivesValue.text!)
            let sixes:Int? = Int(sixesValue.text!)
            score = score + Int(ones!) + Int(twos!) + Int(threes!)
                + Int(fours!) + Int(fives!) + Int(sixes!)
            
            if score >= 63 {
                score += 35
                bonusValue.text = "35"
            }
            topTotalValue.text = "\(score)"
            return true
        }
        return false
    }
    func checkBottomFull() -> Bool{
        if threeKindScored == true && fourKindScored == true && fullHouseScored == true && smStraighScored == true && lgStraightScored == true && yahtzeeScored == true && chanceScored == true {
            var score = 0
            let threeKind:Int? = Int(threeKindValue.text!)
            let fourKind:Int? = Int(fourKindValue.text!)
            let fullHouse:Int? = Int(fullHouseValue.text!)
            let sm:Int? = Int(smStraightValue.text!)
            let lg:Int? = Int(lgStraightValue.text!)
            let yahtzee:Int? = Int(yahtzeeValue.text!)
            let chance:Int? = Int(chanceValue.text!)
            score = Int(threeKind!) + Int(fourKind!) + Int(fullHouse!) + Int(sm!) + Int(lg!) + Int(yahtzee!) + Int(chance!)
            bottomTotalValue.text = "\(score)"
            return true
        }
        return false
    }
    
    @IBAction func newGame(_ sender: Any) {
        //reset rolls left
        rollsRemaining = 3
        rollsLeft.text = "\(rollsRemaining) Rolls Left"
        
        //set variables to false
        dieOneClicked = false
        dieTwoClicked = false
        dieThreeClicked = false
        dieFourClicked = false
        dieFiveClicked = false
        onesScored = false
        twosScored = false
        threesScored = false
        foursScored = false
        fivesScored = false
        sixesScored = false
        threeKindScored = false
        fourKindScored = false
        fullHouseScored = false
        smStraighScored = false
        lgStraightScored = false
        yahtzeeScored = false
        chanceScored = false
        
        //reset all scores
        onesValue.text = "0"
        twosValue.text = "0"
        threesValue.text = "0"
        foursValue.text = "0"
        fivesValue.text = "0"
        sixesValue.text = "0"
        bonusValue.text = "0"
        topTotalValue.text = "0"
        threeKindValue.text = "0"
        fourKindValue.text = "0"
        fullHouseValue.text = "0"
        smStraightValue.text = "0"
        lgStraightValue.text = "0"
        yahtzeeValue.text = "0"
        chanceValue.text = "0"
        bottomTotalValue.text = "0"
        finalScore.text = "Final Score\n0"

        //reset dice to one
        diceOne.image = UIImage(named:"Dice1")
        diceTwo.image = UIImage(named:"Dice1")
        diceThree.image = UIImage(named:"Dice1")
        diceFour.image = UIImage(named:"Dice1")
        diceFive.image = UIImage(named:"Dice1")
        
        dieOneNum = 1
        dieTwoNum = 1
        dieThreeNum = 1
        dieFourNum = 1
        dieFiveNum = 1
    }
    
    
}

