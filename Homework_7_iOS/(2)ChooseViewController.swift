//
//  ChooseViewController.swift
//  Homework_7_iOS
//
//  Created by Alexey Makarov on 22.02.2021.
//

import UIKit

protocol ChooseDelegate: class {
    func setColor(color: String)
}

class ChooseViewController: UIViewController {
    
    let green = "Выбран зеленый цвет"
    let red = "Выбран красный цвет"
    let blue = "Выбран синий цвет"
    
    var x = "Choose green color"
    
    weak var delegate: ChooseDelegate?
    
    @IBOutlet weak var textResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textResult.text = x
    }
    
    @IBAction func greenButton(_ sender: AnyObject) {
        delegate?.setColor(color: green)
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func blueButton(_ sender: Any) {
        //textResult.text = blue
        dismiss(animated: true, completion: nil)
        delegate?.setColor(color: blue)
    }
    
    @IBAction func redButton(_ sender: Any) {
        //textResult.text = red
        dismiss(animated: true, completion: nil)
        delegate?.setColor(color: red)
    }
  
}


