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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.yourName = yourNameTF.text
        resultVC.partnerName = partnerNameTF.text
    }

    @IBAction func showResultTapped() {
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
    
}

