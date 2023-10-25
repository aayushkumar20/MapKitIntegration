//
//  ContentView.swift
//  MapKitIntegration
//
//  Created by Aayush kumar on 25/10/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // 2.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
                    latitude: 23.077252,
                    longitude: 76.851114),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.03,
                    longitudeDelta: 0.03)
                )

    var body: some View {
        // 3.
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
            .onAppear{
                MKMapView.appearance().mapType = .satellite
            }
    }
}

#Preview {
    MapView()
}
