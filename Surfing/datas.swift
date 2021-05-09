//
//  datas.swift
//  Surfing
//
//  Created by Clément Dudit on 09/05/2021.
//

import UIKit

func surfers() -> [Surfer] {
    return [
        Surfer(name: "Ferreira", surname: "Italo", nationality: "Brésil"),
        Surfer(name: "Florence", surname: "John John", nationality: "Haxaiï"),
        Surfer(name: "Flores", surname: "Jérémy", nationality:"France"),
        Surfer(name: "Medina", surname: "Gabriel", nationality: "Brésil"),
        Surfer(name: "Slater", surname: "Kelly", nationality: "USA"),
        Surfer(name: "Smith", surname: "Jordy", nationality: "Afrique du Sud")
    ]
}
 
func spots() -> [Spot] {
    return [
        Spot(name: "Bells Beach", country: "Australie"),
        Spot(name: "Hossegor", country: "France"),
        Spot(name: "Mentawai", country: "Indonésie"),
        Spot(name: "Pipeline", country: "Hawaï"),
        Spot(name: "Teahupoo", country: "Polynésie"),
        Spot(name: "Tenerife", country: "Espagne")
    ]
}
