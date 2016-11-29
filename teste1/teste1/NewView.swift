//
//  NewView.swift
//  teste1
//
//  Created by Aluno on 22/11/16.
//  Copyright © 2016 targettrustt. All rights reserved.
//

import UIKit

class NewView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let dataMinima = "01/01/2016"
        let dataMaxima = "30/12/2016"
        let formatter = DateFormatter()
        formatter.dateFormat = "dd-MM-yyyy"
        
        self.myDatePicker.minimumDate = formatter.date(from: dataMinima)
        self.myDatePicker.maximumDate = formatter.date(from: dataMaxima)
        
        // Do any additional setup after loading the view.
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var lblText: UILabel!

    @IBOutlet weak var lblSwitch: UILabel!
    
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if sender.isOn == true {
            self.lblSwitch.text = "Ligado"
        } else {
            self.lblSwitch.text = "Desligado"

        }
        
        
    }
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBAction func dataChange(_ sender: UIDatePicker) {
        
        print("Data selecionada: \(self.myDatePicker.date)")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy"
        let strDate = dateFormatter.string(from: self.myDatePicker.date)
        
        print("data formatada: \(strDate)")
        
        
    }
    @IBAction func valueSlider(_ sender: UISlider) {
        
        self.lblText.text = "\(sender.value)"
        self.lblText.text = String(format: "%.2f - %d", sender.value, 10)
        print(sender.value)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
