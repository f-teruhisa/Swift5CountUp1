//
//  TourokuViewController.swift
//  Swift5FirebaseAnonymousLogin
//
//  Created by MBP010 on 2020/07/11.
//  Copyright © 2020 Teruhisa Fukumoto. All rights reserved.
//

import UIKit
import Firebase

class TourokuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signInAnonymously { (authResult, error) in
            let user = authResult?.user
            print(user)
            
            // 画面遷移
            let inputVC = self.storyboard?.instantiateViewController(identifier: "inputVC") as! InputViewController
            self.navigationController?.pushViewController(inputVC, animated: true)
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
