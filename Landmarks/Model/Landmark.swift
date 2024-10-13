//
//  Landmark.swift
//  Landmarks
//
//  Created by Ferdous Azad on 13/10/24.
//

import Foundation
import SwiftUI
import MapKit

public struct Landmark: Hashable, Codable, Identifiable {
    public var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String

    var image: Image {
        Image(imageName)
    }

    var coordinates: Coordinates? // Make coordinates optional

    /// Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
    var locationCoordinate: CLLocationCoordinate2D {
        guard let coordinates = coordinates else {
            return CLLocationCoordinate2D() // Provide a default value if coordinates are missing
        }
        return CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
