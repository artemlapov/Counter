//
//  ViewController.swift
//  Counter
//
//  Created by Artem Lapov on 20/08/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var historyOfChangesTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!

    @IBAction func counterMinusDidTapped(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
        }
    }
    @IBAction func counterPlusDidTapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
    }
    @IBAction func counterToZeroDidTapped(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"
    }

    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "\(counter)"
    }


}

