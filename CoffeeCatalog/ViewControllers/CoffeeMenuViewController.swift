//
//  CoffeeMenuViewController.swift
//  CoffeeCatalog
//
//  Created by Elena Kolesova on 20.06.2021.
//

import UIKit

class CoffeeMenuViewController: UIViewController {
    
    var likedCoffee = "❤️"
    
    @IBAction func americanoButton(_ sender: Any) {
    }
    @IBAction func cappuccinoButton(_ sender: Any) {
    }
    @IBAction func chocolateButton(_ sender: Any) {

    }
    @IBAction func cocoaButton(_ sender: Any) {
        
    }
    @IBAction func espressoButton(_ sender: Any) {
    }
    @IBAction func latteButton(_ sender: Any) {
    }
    @IBAction func macchiatoButton(_ sender: Any) {
    }
    @IBAction func mochaButton(_ sender: Any) {
    }

    
    @IBOutlet weak var americanoLikedOutlet: UIButton!
    

    @IBOutlet weak var cappucinoLikedLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension CoffeeMenuViewController: UITextFieldDelegate {
    func coffeeSelected () {
        print("test")
    }
}

