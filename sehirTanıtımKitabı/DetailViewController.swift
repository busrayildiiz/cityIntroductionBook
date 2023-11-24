//
//  DetailViewController.swift
//  sehirTanıtımKitabı
//
//  Created by MacBook Pro on 12.11.2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var sehirBolgesi: UILabel!
    @IBOutlet weak var sehirİsmi: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    var secilenSehir : Sehir?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sehirİsmi.text = secilenSehir?.isim
        sehirBolgesi.text = secilenSehir?.bolge
        imageView.image = secilenSehir?.gorsel    }
    
    

 
}
