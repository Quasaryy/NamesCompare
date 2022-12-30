//
//  ViewController.swift
//  NamesCompare
//
//  Created by Yury on 30.12.22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var partnerNameTF: UITextField!
    @IBOutlet var yourNameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func ShowResultTapped() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
    
}

