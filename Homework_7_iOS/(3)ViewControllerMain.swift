//
//  (3)ViewControllerMain.swift
//  Homework_7_iOS
//
//  Created by Alexey Makarov on 10.03.2021.
//

import UIKit

class ViewControllerMain: UIViewController {
    
    private var secVC: ViewController?
    var x = UIColor.yellow
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ViewController, segue.identifier == "ShowView" {
            vc.delegate = self
            secVC = vc
            //vc.x = x
        }
    }
    
    @IBAction func greenButton(_ sender: Any) {
        secVC?.x = .green
    }
    
    @IBAction func yellowButton(_ sender: Any) {
        secVC?.x = .yellow
    }
    
    @IBAction func purpleButton(_ sender: Any) {
        secVC?.x = .purple
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = x
    }
 
    
}

extension ViewControllerMain: ColorDelegate {
    func setTitleColor(color: UIColor) {
        x = color
    }
}
