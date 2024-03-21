//
//  ViewController.swift
//  CustomTableView
//
//  Created by Francisco Díaz Roldán on 20/3/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!

    struct Paisaje {
        let title: String
        let imageName: String
    }
    
    let data: [Paisaje] = [
        Paisaje(title: "Karim Benzema", imageName: "Benzema"),
        Paisaje(title: "Imagen 2", imageName: "chilkoottrail"),
        Paisaje(title: "Imagen 3", imageName: "chincoteague"),
        Paisaje(title: "Imagen 4", imageName: "hiddenlake"),
        Paisaje(title: "Imagen 5", imageName: "icybay"),
        Paisaje(title: "Imagen 6", imageName: "lakemcdonald"),
        Paisaje(title: "Imagen 7", imageName: "rainbowlake"),
        Paisaje(title: "Imagen 8", imageName: "silversalmoncreek"),
        Paisaje(title: "Imagen 9", imageName: "stmarylake"),
        Paisaje(title: "Imagen 10", imageName: "twinlake"),
        Paisaje(title: "Imagen 11", imageName: "umbagog"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let paisaje = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = paisaje.title
        cell.iconImageView.image = UIImage(named: paisaje.imageName)
        return cell
    }

    
    func tableView(_ tableView: UITableView,  heightForRowAt indexPath: IndexPath)  ->
        CGFloat {
            return 140
    }
}
