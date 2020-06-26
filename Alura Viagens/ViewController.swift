//
//  ViewController.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 26/06/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let listaViagens: Array<String> = ["Rio de Janeiro", "Ceará", "São Paulo"]

    @IBOutlet weak var tabelaViagens: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listaViagens[indexPath.row]
        return cell
      }


}

