//
//  ViewController.swift
//  Adivinha quantas coisas
//
//  Created by Iuri Menin on 27/07/16.
//  Copyright © 2016 Iuri Menin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usuarioPalpite: UITextField!
    @IBOutlet weak var resultadoPalpite: UILabel!
    
    @IBAction func adivinhar(sender: UIButton) {
        let numeroSecreto = String(arc4random_uniform(6))
        
        if numeroSecreto == usuarioPalpite.text {
            resultadoPalpite.text = "Você acertou!!"
        } else {
            resultadoPalpite.text = "Você errou. O numero era " + numeroSecreto
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

