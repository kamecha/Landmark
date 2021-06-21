//
//  MapView.swift
//  Landmarks
//
//  Created by masaki kameyama on 2021/05/10.
//

import SwiftUI
import MapKit

struct MapView: View {
    let coordinate: Coordinate
    @State private var region = MKCoordinateRegion()
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                self.region = MKCoordinateRegion(
                    center: CLLocationCoordinate2D(
                        latitude: coordinate.latitude,
                        longitude: coordinate.longitude
                    ),
                    span: MKCoordinateSpan(
                        latitudeDelta: 0.004,
                        longitudeDelta: 0.004
                    )
                )
            }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: Coordinate(longitude: -116.166868, latitude: 34.011286))
    }
}
