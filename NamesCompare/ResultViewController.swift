//
//  ResultViewController.swift
//  NamesCompare
//
//  Created by Yury on 30.12.22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var percentLabel: UILabel!
    
    var yourName: String!
    var partnerName: String!
    var namesComp = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "\(yourName ?? "") and \(partnerName ?? "")"
        namesComp = absoluteValue()
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 4)
        progressBar.progress = Float(namesComp) / 100
        percentLabel.text = "\(namesComp) %"
    }
    
    @IBAction func goBackTapped() {
    }
    
    func charValue(name: String) -> Int {
        var total = 0
        for character in name.lowercased() {
            switch character {
            case "a", "b", "c":
                total += 1
            case "q", "w", "e":
                total += 2
            case "r", "t", "y", "u":
                total += 3
            case "i", "o", "p", "s":
                total += 4
            case "d", "f", "g", "h":
                total += 5
            case "j", "k", "l", "z":
                total += 6
            default:
                total += 7
            }
        }
        return total
    }
    
    func absoluteValue() -> Int {
        let absValue = abs(charValue(name: yourName) - charValue(name: partnerName))
        
        switch absValue {
        case 0, 1, 2:
            return 100
        case 3:
            return 95
        case 4:
            return 90
        case 5:
            return 85
        case 6:
            return 80
        case 7:
            return 75
        case 8:
            return 70
        case 9:
            return 65
        case 10:
            return 60
        default:
            return 55
        }
    }
    
}
