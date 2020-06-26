//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 26/06/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()

    @IBOutlet weak var tabelaViagens: UITableView!
    
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let viagemAtual = listaViagens[indexPath.row]
        cell.textLabel?.text = viagemAtual.titulo
        return cell
      }


}

