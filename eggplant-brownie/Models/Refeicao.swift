//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 17/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

class Refeicao: NSObject {
    // Mark - Atributos
    
    var nome: String // Cuidado com optional -> "!" = pegar apenas o valor
    var felicidade: String
    var itens: Array<Item> = []
    
    // Mark - Construtor -> Init
    
    init(nome: String, felicidade: String) {
        self.nome = nome
        self.felicidade = felicidade
    }
    
    // Mark - Metodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    } // Responsabilidade dessa funcão retornar o total de calorias, responsabilidade dessa func
}
