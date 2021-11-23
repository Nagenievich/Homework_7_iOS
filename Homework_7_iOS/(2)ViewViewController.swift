//
//  ViewViewController.swift
//  Homework_7_iOS
//
//  Created by Alexey Makarov on 22.02.2021.
//

import UIKit


class ViewViewController: UIViewController {
    
    var x = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let vc = segue.destination as? ChooseViewController, segue.identifier == "Choose" {
                vc.delegate = self
                vc.x = x
        }
    }
    
    @IBOutlet weak var result: UILabel!
    @IBAction func chooseColor(_ sender: Any) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = x
        }
}

extension ViewViewController: ChooseDelegate {
    func setColor(color: String) {
        x = color
        result.text = "\(color), который выбрали"
    }
}
