//
//  GreenViewController.swift
//  teste1
//
//  Created by Aluno on 24/11/16.
//  Copyright © 2016 targettrustt. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var lblNome: UILabel!
    var teste = ""
    
    var arrayCidades = [String]()
    var arrayEstados = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblNome.text = teste
        // Do any additional setup after loading the view.
        
        self.myPickerView.dataSource = self
        self.myPickerView.delegate = self
        
        self.arrayCidades = ["Porto Alegre", "Canoas", "Gravatai", "Viamao"]
        self.arrayEstados = ["RS", "SC", "PR"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        
        switch component {
        case 0:
            return self.arrayEstados.count
        case 1:
            return self.arrayCidades.count
        default:
            return 0
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        switch component {
        case 0:
            return self.arrayEstados[row]
        case 1:
            return self.arrayCidades[row]
        default:
            return ""
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch component {
        case 0:
            print("Selecionou o estado: \(self.arrayEstados[row])")
        case 1:
            print("Selecionou a cidade: \(self.arrayCidades[row])")
        default:
            break
        }
    }
    
    @IBAction func btnPickerView(_ sender: Any) {
        
 
        
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
