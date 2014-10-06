//
//  ViewController.swift
//  FunFacts
//
//  Created by jordan on 26/09/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var funFactLabel: UILabel!
    @IBOutlet var factButtonForColor: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showFacts() {
        var color = colorWheel.randomColor()
        view.backgroundColor = color
        factButtonForColor.setTitleColor(color, forState: nil)
        funFactLabel.text = factBook.randomFact()
    }
}

