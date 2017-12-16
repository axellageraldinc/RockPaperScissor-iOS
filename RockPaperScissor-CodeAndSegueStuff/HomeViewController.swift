//
//  HomeViewController.swift
//  RockPaperScissor-CodeAndSegueStuff
//
//  Created by Axellageraldinc Adryamarthanino on 16/12/17.
//  Copyright © 2017 Axell. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController = segue.destination as! ResultViewController
        if segue.identifier == "paperSegue"{
            resultController.userChoice = 1
            resultController.opponentChoice = randomOpponents()
        } else if segue.identifier == "scissorSegue"{
            resultController.userChoice = 2
            resultController.opponentChoice = randomOpponents()
        }
    }
    
    func randomOpponents() -> Int {
        var opponentsValue:Int
        opponentsValue = Int(arc4random_uniform(3) + 0)
        return(opponentsValue)
    }

    @IBAction func rockButtonPressed(_ sender: UIButton) {
        let resultController:ResultViewController
        resultController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultController.userChoice = 0
        resultController.opponentChoice = randomOpponents()
        present(resultController, animated: true, completion: nil)
    }
    
}

