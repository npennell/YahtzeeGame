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
    
    var dieOneClicked:Bool = false
    //var dieTwoClicked:Bool = false
    //var dieThreeClicked:Bool = false
    //var dieFourClicked:Bool = false
    //var dieFiveClicked:Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Roll Button clicked
    //randomly generates roll for the five dice
    @IBAction func rollButton(_ sender: Any) {
        let dieOneNum = Int.random(in: 1...6)
        let dieTwoNum = Int.random(in: 1...6)
        let dieThreeNum = Int.random(in: 1...6)
        let dieFourNum =  Int.random(in: 1...6)
        let dieFiveNum = Int.random(in: 1...6)
        
        diceOne.image = UIImage(named: "Dice\(dieOneNum)")
        diceTwo.image = UIImage(named: "Dice\(dieTwoNum)")
        diceThree.image = UIImage(named: "Dice\(dieThreeNum)")
        diceFour.image = UIImage(named: "Dice\(dieFourNum)")
        diceFive.image = UIImage(named: "Dice\(dieFiveNum)")
    }
    
    
    
}

