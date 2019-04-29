//
//  ViewController2.swift
//  pizzapp
//
//  Created by Diego Alejandro Cantú Gómez on 28/04/19.
//  Copyright © 2019 Diego Alejandro Cantú Gómez. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var volumePicker: UIPickerView!
    var size:String = ""
    var selectedVolume: String = ""
    
    var pickerData:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.volumePicker.delegate = self
        self.volumePicker.dataSource = self
        
        pickerData = ["Delgada","Crujiente","Gruesa"]
        
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
            selectedVolume = "Delgada"
        } else if (row == 1) {
            selectedVolume = "Crujiente"
        } else if (row == 2) {
            selectedVolume = "Gruesa"
        } else {
            selectedVolume = "Delgada"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (selectedVolume == ""){
            selectedVolume = "Delgada"
        }
        
        let showViewController3: ViewController3 = segue.destination as! ViewController3
        showViewController3.size = size
        showViewController3.volume = selectedVolume
        
    }
    
}
