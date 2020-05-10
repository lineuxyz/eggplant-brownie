//
//  Item.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 17/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    // Mark -> Atributos
    
    var nome: String
    var calorias: Double
    
    // Mark -> Init
    
    init (nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
