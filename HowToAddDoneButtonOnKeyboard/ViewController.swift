//
//  ViewController.swift
//  HowToAddDoneButtonOnKeyboard
//
//  Created by JeongminKim on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "This is my text field~"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.red.cgColor
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(textField)
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            textField.widthAnchor.constraint(equalToConstant: 200),
            textField.heightAnchor.constraint(equalToConstant: 45),
        ])
        
        textField.addDonebuttonOnKeyboard()
    }
}

extension UITextField {
    func addDonebuttonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(
            frame: CGRect(
                x: 0,
                y: 0,
                width: UIScreen.main.bounds.width,
                height: 50
            )
        )
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        let done = UIBarButtonItem(
            title: "DONE!",
            style: .done,
            target: self,
            action: #selector(self.doneButtonAction)
        )
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
}

extension UITextView {
    func addDonebuttonOnKeyboard() {
        let doneToolbar: UIToolbar = UIToolbar(
            frame: CGRect(
                x: 0,
                y: 0,
                width: UIScreen.main.bounds.width,
                height: 50
            )
        )
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        let done = UIBarButtonItem(
            title: "DONE!",
            style: .done,
            target: self,
            action: #selector(self.doneButtonAction)
        )
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction() {
        self.resignFirstResponder()
    }
}
