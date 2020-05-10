//
//  AdicionarItensViewController.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 18/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil )
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - IBAction

    @IBAction func adicionarItem(_ sender: Any) {
        // Navegar para proxima tela: navigationController.push()
        // Voltar para tela anterior: navigationController.pop()
        
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        
        if let numeroDeCalorias = Double(calorias) {
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            
            delegate?.add(item)
            
            navigationController?.popViewController(animated: true)
        }
    }
}
