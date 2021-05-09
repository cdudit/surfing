//
//  ProfilViewController.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

class ProfilViewController: UIViewController {
    
    
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var textCountry: UILabel!
    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var image: UIImageView!
    var sender:Surfer?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
        image.layer.borderWidth = 2
        image.layer.borderColor = UIColor.white.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let surfer = sender {
            bgImage.image = UIImage(named: surfer.bg)
            image.image = UIImage(named: surfer.profile)
            textName.text = "\(surfer.surname) \(surfer.name)"
            textCountry.text = surfer.nationality
        }
    }
}
