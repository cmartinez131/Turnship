//
//  CompanyLoginViewController.swift
//  Turnship
//
//  Created by Rijad Kasumi on 11/15/21.
//

import UIKit
import Parse
class CompanyLoginViewController: UIViewController {
    @IBOutlet weak var CompanyUsername: UITextField!
    @IBOutlet weak var CompanyPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onLogin(_ sender: Any) {
        
        let username = CompanyUsername.text!
        let password = CompanyPassword.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password) { (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "CompanyLoginSegue", sender: nil)
            }
            else {
                print("Error: \(error?.localizedDescription)")
            }
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
