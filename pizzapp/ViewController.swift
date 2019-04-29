//
//  ViewController.swift
//  pizzapp
//
//  Created by Diego Alejandro Cantú Gómez on 27/04/19.
//  Copyright © 2019 Diego Alejandro Cantú Gómez. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
  
    @IBOutlet weak var sizePicker: UIPickerView!
    var pickerData:[String] = [String]()
    var selectedSize: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.sizePicker.delegate = self
        self.sizePicker.dataSource = self
        
        pickerData = ["Chica","Mediana","Grande"]
        
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
             selectedSize = "Chica"
        } else if (row == 1) {
             selectedSize = "Mediana"
        } else if (row == 2) {
             selectedSize = "Grande"
        } else {
             selectedSize = "Chica"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (selectedSize == ""){
              selectedSize = "Chica"
        }
        
       let showViewController2: ViewController2 = segue.destination as! ViewController2
       showViewController2.size = selectedSize
    }

}

