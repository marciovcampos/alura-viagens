//
//  TableViewCell.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 29/06/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    @IBOutlet weak var imagemViagem: UIImageView!
    
    func configuraCelula(viagem: Viagem){
        
        labelTitulo.text = viagem.titulo
        labelQuantidadeDias.text = viagem.quantidadeDeDias == 1 ? "1 dia" : "\(viagem.quantidadeDeDias) dias"
        labelPreco.text = "R$ \(viagem.preco)"
        imagemViagem.image = UIImage(named: viagem.caminhoDaImagem)
        imagemViagem.layer.cornerRadius = 10
        imagemViagem.layer.masksToBounds = true
        
    }
    
    
    
}
