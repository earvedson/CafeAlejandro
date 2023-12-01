//
//  MapView.swift
//  CafeAlejandro
//
//  Created by Erik Arvedson on 2023-11-28.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 57.710821136802515, longitude: 11.944103236081427),
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

#Preview {
    MapView()
}
