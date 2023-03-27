//
//  ViewController.swift
//  Counter
//
//  Created by Анна Гурьянова on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    private var counter: Int = 0
    private let defaultText = "Значение счётчика: "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyView.insertText("\n")
    }
    func getDate() -> String {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = df.string(from: date)
        return dateString
    }
    @IBAction func increment(_ sender: Any) {
        counter += 1
        counterLabel.text = defaultText + String(counter)
        storyView.insertText(getDate() + " значение изменено на: +1\n")
    }
    @IBAction func decrement(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = defaultText + String(counter)
            storyView.insertText(getDate() + " значение изменено на: -1\n")
        }
    }
    @IBAction func zeroCounter(_ sender: Any) {
        counter = 0
        counterLabel.text = defaultText + String(counter)
        storyView.insertText(getDate() + " : значение сброшено\n")
    }
    
    @IBOutlet weak var storyView: UITextView!
}

