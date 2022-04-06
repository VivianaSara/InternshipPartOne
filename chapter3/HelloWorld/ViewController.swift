//
//  ViewController.swift
//  HelloWorld
//
//  Created by Viviana Mesaros on 05.04.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.black
    }
    
    @IBAction func showMessage(sender: UIButton) {
        
        let emoji = ["😂": "laugh",
                     "😍": "love" ,
                     "🤔": "think",
                     "😕" : "sad" ]
        
        let selectedButton = sender
        // Get the emoji from the title label of the selected button
        if let wordToLookup = selectedButton.titleLabel?.text {
            let meaning = emoji[wordToLookup]
            
            if let meaning = meaning {
                let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle:  UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
            }
        }
        
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title:"OK",style:UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}

