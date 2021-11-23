//
//  ViewController.swift
//  Homework_7_iOS
//
//  Created by Alexey Makarov on 10.02.2021.
//

import UIKit

protocol ColorDelegate: class {
    func setTitleColor(color: UIColor)
}

class ViewController: UIViewController {
    
    weak var delegate: ColorDelegate?
    var x = UIColor.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = x
    }

    @IBAction func greenButton(_ sender: Any) {
        delegate?.setTitleColor(color: .green)
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func yellowButton(_ sender: Any) {
        delegate?.setTitleColor(color: .yellow)
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        delegate?.setTitleColor(color: .purple)
    }
}

