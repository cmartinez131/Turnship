//
//  ViewController.swift
//  Turnship
//
//  Created by Christopher Martinez on 11/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToOther(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Rijad", bundle: nil)
          let view = storyboard.instantiateViewController(withIdentifier: "Rijad")
          self.present(view, animated: true, completion: nil)
    }
    
}

