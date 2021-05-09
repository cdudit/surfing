//
//  SurfersViewController.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

class SurfersViewController: UIViewController {
    
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var classement: UILabel!
    
    var surfers:[Surfer] = []
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.surfers = Surfing.surfers()
        
        rounded()
        setSurfer(surfer: surfers[index])
        image.isUserInteractionEnabled = true
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        image.addGestureRecognizer(tapGestureRecognizer)
    }
    
    func rounded() {
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
        
        classement.layer.cornerRadius = classement.frame.size.width / 2
        classement.clipsToBounds = true
    }
    
    func setSurfer(surfer: Surfer) {
        textName.text = "\(surfer.name) \(surfer.surname)"
        image.image = UIImage(named: surfer.profile)
        classement.text = String(index + 1)
    }
    
    @objc func imageTapped() {
        performSegue(withIdentifier: "goToProfile", sender: surfers[index])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToProfile" {
            if let profil = segue.destination as? ProfilViewController {
                profil.sender = sender as? Surfer
            }
        }
        
    }
    
    @IBAction func previous(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = surfers.count - 1
        }
        setSurfer(surfer: surfers[index])
    }
    
    @IBAction func next(_ sender: Any) {
        index += 1
        if index >= surfers.count {
            index = 0
        }
        setSurfer(surfer: surfers[index])
    }
}
