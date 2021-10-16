//
//  WelcomeViewController.swift
//  MyObjectiveCApp
//
//  Created by Alan Silva on 03/06/21.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            
            let alert = UIAlertController(title: "Uhuuu", message: "I am so proud of you!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Fechar", style: .default, handler: nil))
            self.present(alert, animated: true)
            
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
