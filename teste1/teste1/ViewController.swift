//
//  ViewController.swift
//  teste1
//
//  Created by Aluno on 22/11/16.
//  Copyright © 2016 targettrustt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnViewBlue(_ sender: UIButton) {
        self.performSegue(withIdentifier: "segueBlue", sender: self)
    }

}

