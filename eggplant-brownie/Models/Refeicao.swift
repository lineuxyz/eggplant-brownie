//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 17/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    // MARK: - Atributos
    
    let nome: String // Cuidado com optional -> "!" = pegar apenas o valor
    let felicidade: Int
    var itens: Array<Item> = []
    
    // MARK: - Construtor -> Init
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    // MARK: - NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(felicidade, forKey: "felicidade")
        aCoder.encode(itens, forKey: "itens")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        felicidade = aDecoder.decodeInteger(forKey: "felicidade")
        itens = aDecoder.decodeObject(forKey: "itens") as! Array<Item>
    }
    // MARK: - Metodos
    
    func totalDeCalorias() -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    } // Responsabilidade dessa funcão retornar o total de calorias, responsabilidade dessa func
    
    func detalhes() -> String {
        var mensagem = "Felicidade: \(felicidade)"
        
        for item in itens {
            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
        }
        
        return mensagem
    }
}
