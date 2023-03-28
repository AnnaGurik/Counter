//
//  ViewController.swift
//  Counter
//
//  Created by Анна Гурьянова on 27.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var storyView: UITextView!
    private var counter: Int = 0
    private let defaultText = "Значение счётчика: "
    
    @IBAction func increment(_ sender: Any) {
        incrementAction()
    }
    
    @IBAction func decrement(_ sender: Any) {
        decrementAction()
    }
    
    @IBAction func zeroCounter(_ sender: Any) {
        zeroAction()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyView.insertText("\n")
    }
    
    private func getDate() -> String {
        let date = Date()
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = df.string(from: date)
        return dateString
    }
    
    private func incrementAction() {
        counter += 1
        counterLabel.text = defaultText + String(counter)
        storyView.insertText(getDate() + " : значение изменено на: +1\n")
    }
    
    private func decrementAction() {
        if counter > 0 {
            counter -= 1
            counterLabel.text = defaultText + String(counter)
            storyView.insertText(getDate() + " : значение изменено на: -1\n")
        } else {
            storyView.insertText(getDate() + " : попытка уменьшить значение счетчика ниже 0\n")
        }
    }
    
    private func zeroAction() {
        counter = 0
        counterLabel.text = defaultText + String(counter)
        storyView.insertText(getDate() + " : значение сброшено\n")
    }
}

