//
//  ViewController.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contact: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        contact.layer.cornerRadius = 30
        contact.clipsToBounds = true
    }


}

