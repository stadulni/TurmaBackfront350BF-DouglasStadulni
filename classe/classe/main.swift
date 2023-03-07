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



