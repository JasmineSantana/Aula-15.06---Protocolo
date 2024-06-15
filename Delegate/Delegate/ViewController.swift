//
//  ViewController.swift
//  Delegate
//
//  Created by iOSLab on 15/06/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SecondViewController.delegate = self
    }

}
extension ViewController: SecondViewControllerProtocol{
    func getName() -> String? {
        nameInput.text
    }
    
    
    
}
