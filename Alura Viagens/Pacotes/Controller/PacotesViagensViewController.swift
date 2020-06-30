//
//  PacotesViagensViewController.swift
//  Alura Viagens
//
//  Created by Marcio Vinicius Campos da Silveira on 30/06/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

import UIKit

class PacotesViagensViewController: UIViewController, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoPacotesViagem.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var colecaoPacotesViagem: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return 5
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaPacote = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! PacoteViagemCollectionViewCell
        celulaPacote.backgroundColor = UIColor.blue
        return celulaPacote
       }

}
