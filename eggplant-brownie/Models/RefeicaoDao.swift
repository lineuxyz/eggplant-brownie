//
//  RefeicaoDao.swift
//  eggplant-brownie
//
//  Created by Lineu Alberto on 19/04/20.
//  Copyright © 2020 Lineu Alberto. All rights reserved.
//

import Foundation

class RefeicaoDao {
    
    
    func save(_ refeicoes: [Refeicao]) {
        guard let caminho = recuperaCaminho() else { return }
        do {
            let dados = try NSKeyedArchiver.archivedData(withRootObject: refeicoes, requiringSecureCoding: false)
            try dados.write(to: caminho)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func recupera() -> [Refeicao] {
        guard let caminho = recuperaCaminho() else { return [] }
        do {
            let dados = try Data(contentsOf: caminho)
            guard let refeicoesSalvas = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dados)as? Array<Refeicao> else { return [] }
            
            return refeicoesSalvas
        } catch {
            print(error.localizedDescription)
            return []
        }
        
        
    }
    
    func recuperaCaminho() -> URL? {
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }
        let caminho = diretorio.appendingPathComponent("refeicao")
        
        return caminho
    }
}
