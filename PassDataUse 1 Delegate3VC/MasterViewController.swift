//
//  ViewController.swift
//  PassDataUse 1 Delegate3VC
//
//  Created by Hiếu Nguyễn on 10/24/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController, DetailViewControllerDelegate {
    func passData(data: String) {
        print(data)
        nameLabel.text = data
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let masterViewController = segue.destination as? MiddleViewController {
            masterViewController.masterVC = self
        }
    }

}

