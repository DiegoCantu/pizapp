//
//  ViewController4.swift
//  pizzapp
//
//  Created by Diego Alejandro Cantú Gómez on 28/04/19.
//  Copyright © 2019 Diego Alejandro Cantú Gómez. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    
    
    @IBOutlet weak var jamonSwitch: UISwitch!
    @IBOutlet weak var peperoniSwitch: UISwitch!
    @IBOutlet weak var pavoSwitch: UISwitch!
    @IBOutlet weak var pinaSwitch: UISwitch!
    @IBOutlet weak var cebollaSwitch: UISwitch!
    
    var size:String = ""
    var volume:String = ""
    var chesse: String = ""
    var selectedIngredientes: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (jamonSwitch.isOn) {
            selectedIngredientes.append("Jamon")
        }
        if (peperoniSwitch.isOn) {
            selectedIngredientes.append("Peperonni")
        }
        if (pavoSwitch.isOn) {
            selectedIngredientes.append("Pavo")
        }
        if (pinaSwitch.isOn) {
            selectedIngredientes.append("Piña")
        }
        if (cebollaSwitch.isOn) {
            selectedIngredientes.append("Cebolla")
        }
        
        let showViewController5: ViewController5 = segue.destination as! ViewController5
        
        showViewController5.size = size
        showViewController5.volume = volume
        showViewController5.chesse = chesse
        showViewController5.ingredientes = selectedIngredientes
        
    }
    
}
