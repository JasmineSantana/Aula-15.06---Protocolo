//
//  ViewController.swift
//  Delegate
//
//  Created by iOSLab on 15/06/24.
//

import UIKit

protocol SecondViewControllerProtocol {
    func getName ()-> String?
}

class SecondViewController: UIViewController {
    @IBOutlet weak var resultOutput: UILabel!
    //Static essa variavél não consigo utilizar dentro de um instancia, existe dentro da classse e não precisa usar dentro de uma instancia
    // Será um optional, por que não tem objeto para ser inicializado
    static var delegate: SecondViewControllerProtocol?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // O delegate está como Optional por que caso o Second não existir ele vai voltar como null
        resultOutput.text = SecondViewController.delegate?.getName()
      
        
    }


}

