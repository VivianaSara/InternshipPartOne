//
//  ViewController.swift
//  chapter8-exercise1
//
//  Created by Viviana Mesaros on 08.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurants = ["Barrafina", "Bourke Street Bakery", "Cafe Deadend", "Cafe Loisl", "Cafe Lore", "CASK Pub and Kitchen", "Confessional", "Donostia", "Five Leaves", "For Kee Restaurant", "Graham Avenue Meats And Deli", "Haigh's Chocolate", "Homei", "Palomino Espresso", "Petite Oyster", "Po's Atelier", "Royal Oak", "Teakha", "Traif", "Upstate", "Waffle & Wolf"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        restaurants.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)-> UITableViewCell {
        
        let cellId = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        cell.textLabel?.text = restaurants[indexPath.row]
        cell.imageView?.image = UIImage(named: restaurants[indexPath.row])
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
