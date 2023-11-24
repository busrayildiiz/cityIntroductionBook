//
//  ViewController.swift
//  sehirTanıtımKitabı
//
//  Created by MacBook Pro on 12.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var sehirDizisi = [Sehir]()
    var kullaniciSecimi : Sehir?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        
        let istanbul = Sehir(isim: "İstanbul", bolge: "Marmara", gorsel: UIImage(named: "istanbull")!)
        
        let ankara = Sehir(isim: "Ankara", bolge: "İç Anadolu", gorsel: UIImage(named: "ankara")!)

        let izmir = Sehir(isim: "İzmir", bolge: "Ege", gorsel: UIImage(named: "Izmir")!)
        
        let diyarbakir = Sehir(isim: "Diyarbakır", bolge: "Güneydoğu Anadolu", gorsel: UIImage(named: "diyarbakir")!)
        
        let antalya = Sehir(isim: "Antalya", bolge: "Akdeniz", gorsel: UIImage(named: "antalya")!)
        
        sehirDizisi = [istanbul, ankara, izmir, diyarbakir, antalya]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sehirDizisi.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sehirDizisi[indexPath.row].isim
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        kullaniciSecimi = sehirDizisi[indexPath.row]
        performSegue(withIdentifier: "toDetailVC", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.secilenSehir = kullaniciSecimi
        }
    }
}

