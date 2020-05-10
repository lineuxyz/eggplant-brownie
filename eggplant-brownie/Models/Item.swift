//
//  Item.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 17/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

class Item: NSObject, NSCoding {
        // MARK: - Atributos
    
    var nome: String
    var calorias: Double
    
    // MARK: - Init
    
    init (nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
    
    // MARK: - NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(calorias, forKey: "calorias")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        calorias = aDecoder.decodeDouble(forKey: "calorias")
    }
    
}
