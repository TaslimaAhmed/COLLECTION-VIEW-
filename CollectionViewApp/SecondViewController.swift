//
//  SecondViewController.swift
//  CollectionViewApp
//
//  Created by MobioApp on 12/5/17.
//  Copyright © 2017 MobioApp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        redButton.layer.cornerRadius = 15
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func backButtonPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil )
        
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
