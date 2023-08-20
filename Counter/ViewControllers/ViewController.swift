//
//  ViewController.swift
//  Counter
//
//  Created by Artem Lapov on 20/08/2023.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var historyOfChangesTextView: UITextView!
    @IBOutlet weak var counterLabel: UILabel!

    @IBAction func counterMinusDidTapped(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"

            dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
            let dateString = dateFormatter.string(from: Date.init())
            historyOfChanges += "\(dateString): значение изменено на -1\n"
            historyOfChangesTextView.text = historyOfChanges
        }
    }
    @IBAction func counterPlusDidTapped(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"

        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        let dateString = dateFormatter.string(from: Date.init())
        historyOfChanges += "\(dateString): значение изменено на +1\n"
        historyOfChangesTextView.text = historyOfChanges
    }
    @IBAction func counterToZeroDidTapped(_ sender: Any) {
        counter = 0
        counterLabel.text = "\(counter)"

        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        let dateString = dateFormatter.string(from: Date.init())
        historyOfChanges += "\(dateString): значение сброшено\n"
        historyOfChangesTextView.text = historyOfChanges
    }

    let dateFormatter = DateFormatter()

    var counter = 0
    var historyOfChanges = "История изменений:\n"

    override func viewDidLoad() {
        super.viewDidLoad()
        counterLabel.text = "\(counter)"
        historyOfChangesTextView.text = historyOfChanges
    }


}

