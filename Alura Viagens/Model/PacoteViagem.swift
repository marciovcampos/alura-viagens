//
//  PacoteViagem.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 02/07/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class PacoteViagem: NSObject {
    
    let nomeDoHotel: String
    let descricao: String
    let dataViagem: String
    let viagem: Viagem
    
    init(nomeDoHotel: String, descricao: String, dataViagem: String, viagem: Viagem){
        self.nomeDoHotel = nomeDoHotel
        self.descricao = descricao
        self.dataViagem = dataViagem
        self.viagem = viagem
    }

}
