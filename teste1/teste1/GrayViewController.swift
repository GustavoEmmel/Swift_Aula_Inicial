//
//  GrayViewController.swift
//  teste1
//
//  Created by Aluno on 24/11/16.
//  Copyright © 2016 targettrustt. All rights reserved.
//

import UIKit

class GrayViewController: UIViewController {

    var stringLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block: {(timer) in
         
            print("atualizou")
            
            guard self.progressBar.progress < 1 else { timer.invalidate(); return}
            
            self.progressBar.setProgress(self.progressBar.progress + 0.1, animated: true)
            
        })
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClose(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var progressBar: UIProgressView!
    
    func update()->Void{
        print("atualizou")
        
        
        
        self.progressBar.setProgress(self.progressBar.progress + 0.1, animated: true)
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
