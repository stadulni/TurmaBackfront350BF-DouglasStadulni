//
//  main.swift
//  classe
//
//  Created by Douglas Stadulni on 07/03/23.
//

import Foundation

//criando classe

// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

class GarrafadeRefrigerante {
    
    var cor: String = "vermelha"
    var marca: String = "Coca-Cola"
    var eReciclavel: Bool = true
    var quantidadeDeMls: Double = 1.5
    var corDoLiquido: String = "preto"
    
    func abrirGarrafa() {
        print("A garrafa está aberta")
    }
    
    func fecharGarrafa() {
        print("A garrafa está fechada")
    }
}


class Tenis {
    
    var corDoTenis: String = "azul"
    var marcaDoTenis: String = "Nike"
    var eRaro: Bool = true
    var tipo: String = "Dunk"
    var valor: Int = 2000
    
    func amarrar() {
        print("O tenis está amarrado")
    }
    
    func pisar() {
        print("Pisei com o tenis no chao")
    }
}


class Calca {
    
    var corDaCalca: String = "bege"
    var valorDaCalca: Int = 299
    var eRasgada: Bool = false
    var marca: String = "Zara"
    var tipo: String = "Jogger"
    
    func vestir() {
        print("A calca foi vestida")
    }
    
    func tirar() {
        print("A calca foi tirada")
    }
}


//=============================

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}


var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
