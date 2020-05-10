//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 16/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var nomeTextField: UITextField!
    @IBOutlet var felicidadeTextField: UITextField!
    
    @IBAction func adicionar() {
        let nome = nomeTextField.text
        let felicidade = felicidadeTextField.text
        
        print("comi \(nome) e fiquei com felicidade: \(felicidade)")
    }
}

