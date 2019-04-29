//
//  ViewController3.swift
//  pizzapp
//
//  Created by Diego Alejandro Cantú Gómez on 28/04/19.
//  Copyright © 2019 Diego Alejandro Cantú Gómez. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var chessePicker: UIPickerView!
    var pickerData:[String] = [String]()
    var size:String = ""
    var volume:String = ""
    var selectedChesse: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.chessePicker.delegate = self
        self.chessePicker.dataSource = self
        
        pickerData = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        if (row == 0) {
            selectedChesse = "Mozarela"
        } else if (row == 1) {
            selectedChesse = "Cheddar"
        } else if (row == 2) {
            selectedChesse = "Parmesano"
        } else if (row == 3) {
            selectedChesse = "Sin queso"
        } else {
            selectedChesse = "Mozarela"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (selectedChesse == ""){
            selectedChesse = "Mozarela"
        }
        let showViewController4: ViewController4 = segue.destination as! ViewController4
        showViewController4.size = size
        showViewController4.volume = volume
        showViewController4.chesse = selectedChesse
    }
    
}
