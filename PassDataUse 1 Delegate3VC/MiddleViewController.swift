//
//  MiddleViewController.swift
//  PassDataUse 1 Delegate3VC
//
//  Created by Hiếu Nguyễn on 10/24/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class MiddleViewController: UIViewController {
    
    var masterVC: MasterViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let middleViewController = segue.destination as? DetailViewController {
            middleViewController.delegate = masterVC
        }
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
