//
//  AccountViewController.swift
//  Fluidity
//
//  Created by Sherry Liu on 11/10/22.
//

import UIKit
import Parse

class AccountViewController: UIViewController {
    
    

    @IBOutlet weak var emailField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func onEmailSubmit(_ sender: Any) {
        let email = emailField.text!
        PFUser.requestPasswordResetForEmail(inBackground: email){
            (success, error) in if success {
                print("Email sent")
            } else {
                print("Failed")
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
