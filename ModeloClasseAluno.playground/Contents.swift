import UIKit

// Soma esse array, começando com um valor inicial de 5 (ou seja, a conta começa do 5, não do zero), porém o valor a somar de cada elemento é a metade dele (ele dividido por 2)
//
//let array = [1.0,2.0,3.0,4.0,5.0]
//
//let somar = (array).reduce(Double(5), {x, y in (x + y/2)})
//print(somar)




// MARK: - Exercicio2 ( Modelar Classe Aluno )

class Aluno {
    
    var nome:String
    var idade:Int
    var notas:[Double]
    var cpf:String
    
    init(nome:String, idade:Int, notas:[Double], cpf:String) {
        
        self.nome = nome
        self.idade = idade
        self.notas = notas
        self.cpf = cpf
    }
    
    func toString() -> String {
        
        return "O aluno se chama \(nome) e tem \(idade) anos!"
        
    }
    
    func isApproved() -> Bool {
        
        var mediaDeNotas = 0.0
        var passarDeAno = true
        mediaDeNotas = notas.reduce(0.0, {x,y in x+y/4})
        
        if mediaDeNotas < 6{
            passarDeAno = false
        }else if mediaDeNotas >= 6{
       passarDeAno = true
        }
return passarDeAno
    }
    
}

// MARK: - Aluno Aprovado

var icaro = Aluno(nome: "Icaro Benegra", idade: 8, notas: [7.5, 8.5, 9.0, 10.0], cpf: "408.652.948-36")
print(icaro.toString())
print(icaro.isApproved())

// MARK: - Aluno reprovado

var alexandre = Aluno(nome: "alexandre", idade: 40, notas: [2.5, 3.5, 2.2, 4.0], cpf: "884.930.838-90")
print(alexandre.toString())
print(alexandre.isApproved())

// MARK:- Aluno reprovado

var talita = Aluno(nome: "Talita", idade: 38, notas: [2.0, 4.0, 5.0, 1.0], cpf: "848.949.949-36")
print(talita.toString())
print(talita.isApproved())

// MARK: - Aluno aprovado

var gisele = Aluno(nome: "Gisele", idade: 45, notas: [7.0, 8.0, 9.0, 6.0], cpf: "949.828.404=90")
print(gisele.toString())
print(gisele.isApproved())

// MARK: - Aluno Reprovado

var Victor = Aluno(nome: "Victor", idade: 24, notas: [4.0, 2.0, 5.0, 4.5], cpf: "876.908.736-88")
print(Victor.toString())
print(Victor.isApproved())
