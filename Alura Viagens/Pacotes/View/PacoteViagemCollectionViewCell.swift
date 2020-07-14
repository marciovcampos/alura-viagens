//
//  PacoteViagemCollectionViewCell.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 30/06/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class PacoteViagemCollectionViewCell: UICollectionViewCell {
    
  
    @IBOutlet weak var imagemViagem: UIImageView!
    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var labelQuantidadeDias: UILabel!
    @IBOutlet weak var labelPreco: UILabel!
    
    func configuraCelula(pacoteViagem: PacoteViagem){
        labelTitulo.text = pacoteViagem.viagem.titulo
        labelQuantidadeDias.text = pacoteViagem.viagem.quantidadeDeDias == 1 ? "1 dia" : "\(pacoteViagem.viagem.quantidadeDeDias) dias"
        labelPreco.text = "R$ \(pacoteViagem.viagem.preco)"
        imagemViagem.image = UIImage(named: pacoteViagem.viagem.caminhoDaImagem)
        
        layer.borderWidth = 0.5
        layer.borderColor = UIColor(displayP3Red: 85.0/255.00, green: 85.0/255.00, blue: 85.0/255.00, alpha: 1).cgColor
        layer.cornerRadius = 8
    }
    
    
}
