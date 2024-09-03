//
//  QuadroMedalhas.swift
//  ChartsArts
//
//  Created by Andre Gerez Foratto on 13/05/24.
//

import Foundation

struct Medalhas: Hashable {
    let pais: String
    let bandeira: String
    let ouros: CGFloat
    let pratas: CGFloat
    let bronzes: CGFloat
}

var arrayMedalhas: [Medalhas] = [
    Medalhas(pais: "Estados Unidos", bandeira: "https://aimore.net/band/Estados_Unidos.jpg", ouros: 39, pratas: 40, bronzes: 33),
    Medalhas(pais: "China", bandeira: "https://static.significados.com.br/foto/china.jpg",  ouros: 38, pratas: 32, bronzes: 19),
    Medalhas(pais: "Japão", bandeira: "https://aimore.net/band/Japao.jpg",  ouros: 26, pratas: 14, bronzes: 17),
    Medalhas(pais: "Grã-Bretanha", bandeira: "https://aimore.net/band/Reino_Unido_GraBretanha.jpg",  ouros: 22, pratas: 20, bronzes: 22),
    Medalhas(pais: "Rússia", bandeira: "https://aimore.net/band/Russia.jpg",  ouros: 20, pratas: 28, bronzes: 23),
    Medalhas(pais: "Austrália", bandeira: "https://aimore.net/band/Australia.jpg",  ouros: 17, pratas: 7, bronzes: 22),
    Medalhas(pais: "Países Baixos", bandeira: "https://aimore.net/band/Paises_Baixos.jpg",  ouros: 10, pratas: 12, bronzes: 14),
    Medalhas(pais: "França", bandeira: "https://static.todamateria.com.br/upload/fr/an/frana_a.jpg",  ouros: 10, pratas: 12, bronzes: 11),
    Medalhas(pais: "Alemanha", bandeira: "https://i.pinimg.com/564x/68/17/8d/68178d594499e85b8f0530449f1e053a.jpg",  ouros: 10, pratas: 11, bronzes: 16),
    Medalhas(pais: "Itália", bandeira: "https://aimore.net/band/Italia.jpg",  ouros: 10, pratas: 10, bronzes: 20),
]
