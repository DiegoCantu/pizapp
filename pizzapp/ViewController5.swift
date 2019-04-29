//
//  ViewController5.swift
//  pizzapp
//
//  Created by Diego Alejandro Cantú Gómez on 28/04/19.
//  Copyright © 2019 Diego Alejandro Cantú Gómez. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    @IBOutlet weak var productTable: UITableView!
    var productos: [String] = []
    var size:String = ""
    var volume:String = ""
    var chesse: String = ""
    var ingredientes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.productTable.delegate = self
        self.productTable.dataSource = self
        
         productos.append(size)
         productos.append(volume)
         productos.append(chesse)
         productos += ingredientes
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "mycell")
        cell.textLabel?.text  = productos[indexPath.row]
        
        return cell
    }
    
    
}
