//
//  surfer.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

struct Surfer {
    var name: String
    
    var surname: String
     
    var profile: String {
        return name.lowercased() + "-profile"
    }
     
    var bg: String {
        return name.lowercased() + "-bg"
    }
    
    var nationality: String
}
