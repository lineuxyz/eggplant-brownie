import UIKit

// Este é um comentário.

/*
 Este é um comentário de varias
 
 Linhas
*/

let nome = "churros"
let felicidade: Int = 5
let calorias: Double = 79.5
let vegetal: Bool = true

func alimentoConsumido() {
    print("O alimento consumido foi \(nome)")
}

alimentoConsumido()

func alimentoConsumido2(nome: String, caloria: Double) {
  print("o alimento consumido foi: \(nome), com calorias: \(caloria)")
}

//alimentoConsumido2(nome, calorias) -> Aqui voce precisa passa um _(espaço) antes do parametro
alimentoConsumido2(nome: nome, caloria: calorias)
// Não precisa do ponto e vigula no final.

//var nome: String = "Lineu Pastorelli";
//
//nome = "Luisa"
//
//var endereço = "São Paulo";
//// Não precisa do ponto e vigula no final.
//
//print(nome)


// Entendendo Array.
let caloria1 = 50.5
let caloria2 = 100
let caloria3 = 300
let caloria4 = 500

let totalDeCalorias = [50.5, 100, 300, 500, 323, 320]
print(totalDeCalorias)

// Primeira forma de escrever um for:

for i in 0...3 {
    print(i)
    print(totalDeCalorias[i])
}

// Segunda forma de escrever um for:

for i in 0...totalDeCalorias.count-1 {
    print(i)
    print(totalDeCalorias[i])
}

// Terceira forma de escrever um for (mais usada):

for caloria in totalDeCalorias {
    print(caloria)
}

let totalDeCalorias2 = [50.5, 100]

func todasCalorias(totalDeCalorias: Array<Double>) -> Double { // <- Vou retornar
    var total: Double = 0
    
    for caloria in totalDeCalorias2 {
        total += caloria
    }
    
    return total
}

let total = todasCalorias(totalDeCalorias: [50.5, 100, 400])

print(total)

// Aqui é o raciocinio da continuação do storyboard

// Criar a primeira refeição

let nome1 = "Macarrão"
let felicidade1 = "5"

// Criar segunda refeição

let nome2 = "Curros"
let felicidade2 = "4"

// -----------------------------------------

// Criar uma classe que agrupe essas caracteristicas:

class Refeicao { // Class = estrutura
    
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


class Item {
    var nome: String
    var calorias: Double
    
    
    init (nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
// Instanciando uma classe:

let refeicao = Refeicao(nome: "Macarrão", felicidade: "5")


let arroz = Item(nome: "Arroz", calorias: 51.0)
let feijao = Item(nome: "Feijão", calorias: 90.0)
let contraFile = Item(nome: "Contra Filé", calorias: 287.0)

refeicao.itens.append(arroz)
refeicao.itens.append(feijao)
refeicao.itens.append(contraFile)

// Cuidado => Forced unwrap, estamos estraindo forçadamente o valor da variavel

if refeicao.nome != nil {
   print(refeicao.nome!)
}

// Boas práticas para extrair valores opcionais:

if let nome = refeicao.nome {
    print(nome)
}

// Guard let

func exibiNomeDaRefeicao(){
    if let nome = refeicao.nome {
        print(nome)
    }
    
    guard let nome = refeicao.nome else {
        return
    }
    
    print(nome) // -> Com o guard podemos fazer verificações fora do escopo normal, if let só existe dentro do escopo.
}

exibiNomeDaRefeicao()

let numero = Int("5")

if let n = numero {
    print(n)
} else {
    print("erro ao converter string para int")
}
