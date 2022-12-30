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
        if partnerNameTF.text!.isEmpty || yourNameTF.text!.isEmpty {
            showAlert(title: "Names are missing ", message: "Please enter both names 😀")
            return
        }
        performSegue(withIdentifier: "goToResult", sender: nil)
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
    
}

extension FirstViewController {
    func showAlert(title: String, message: String) {
        let alertWindow = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alertWindow.addAction(okButton)
        present(alertWindow, animated: true)
    }
}

extension FirstViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == yourNameTF {
            partnerNameTF.becomeFirstResponder()
        } else {
            showResultTapped()
        }
        return true
    }
}

