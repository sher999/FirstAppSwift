//
//  MiniMap.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 17/05/24.
//

import SwiftUI
import MapKit

struct MiniMap: View {
    var coordinate: CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion{
        MKCoordinateRegion(
        center: coordinate
        , span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    
}

#Preview {
    MiniMap(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
