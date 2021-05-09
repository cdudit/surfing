//
//  SpotsViewController.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

class SpotsViewController: UIViewController {

    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    var spots: [Spot] = []
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.spots = Surfing.spots()
        setSpot(spot: spots[index])
    }
    
    func setSpot(spot: Spot) {
        image.image = UIImage(named: spot.name.lowercased())
        name.text = spot.name
    }
    
    @IBAction func previous(_ sender: Any) {
        index -= 1
        if index < 0 {
            index = spots.count - 1
        }
        setSpot(spot: spots[index])
    }
        
    @IBAction func next(_ sender: Any) {
        index += 1
        if index >= spots.count {
            index = 0
        }
        setSpot(spot: spots[index])
    }
}
