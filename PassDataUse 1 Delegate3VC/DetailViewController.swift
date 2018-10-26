//
//  DetailViewController.swift
//  PassDataUse 1 Delegate3VC
//
//  Created by Hiếu Nguyễn on 10/24/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol DetailViewControllerDelegate: class {
    func passData(data: String)
}

class DetailViewController: UIViewController {
    
    var data: String?

    @IBOutlet weak var textField: UITextField!
    weak var delegate: DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if data != nil {
            textField.text = data
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backData(_ sender: UIButton) {
        delegate?.passData(data: textField.text!)
        navigationController?.popToRootViewController(animated: true)
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
