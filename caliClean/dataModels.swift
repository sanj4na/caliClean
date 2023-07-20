//
//  dataModels.swift
//  caliClean
//
//  Created by Scholar on 7/20/23.
//

import Foundation
import CoreLocation

struct WasteCategory {
    let name: String
    var locations: [Location]
}

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let email: String
    let phoneNumber: String
}
