//
//  GreenViewController.swift
//  teste1
//
//  Created by Aluno on 24/11/16.
//  Copyright © 2016 targettrustt. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var lblNome: UILabel!
    var teste = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblNome.text = teste
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
