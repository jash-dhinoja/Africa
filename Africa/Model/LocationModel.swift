//
//  LocationModel.swift
//  Africa
//
//  Created by Jash Dhinoja on 31/03/2023.
//

import Foundation
import MapKit

class Location: Codable, Identifiable{
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    var location: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
