//
//  ResultViewController.swift
//  RockPaperScissor-CodeAndSegueStuff
//
//  Created by Axellageraldinc Adryamarthanino on 16/12/17.
//  Copyright © 2017 Axell. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var userChoice:Int?
    var opponentChoice:Int?

    @IBOutlet weak var imageMatchResult: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        if userChoice != nil && opponentChoice != nil{
            print("User choice : \(userChoice!)")
            print("Opponent choice: \(opponentChoice!)")
            imageMatchResult.image = UIImage(named: String(determineValue(userChoice: userChoice!, opponentChoice: opponentChoice!)))
        } else{
            print("One of the value is nil!")
        }
    }
    
    func determineValue(userChoice:Int, opponentChoice:Int) -> Int {
        var matchResult:Int=99
        if (opponentChoice == 2 && userChoice == 0) || (userChoice == 2 && opponentChoice == 0){
            matchResult=0
        } else if opponentChoice == userChoice {
            matchResult=3
        } else if(opponentChoice==0 && userChoice==1) || (opponentChoice==1 && userChoice==0) {
            matchResult = 1
        } else{
            matchResult = 2;
        }
        return(matchResult)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
