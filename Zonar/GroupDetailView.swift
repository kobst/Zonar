//
//  GroupDetailView.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import SwiftUI
import MapKit

struct GroupDetailView: View {
    var group: Group
    @State private var region: MKCoordinateRegion

    init(group: Group) {
        self.group = group
        self._region = State(initialValue: MKCoordinateRegion(
            center: group.venues.first?.location.coordinates.first.map { CLLocationCoordinate2D(latitude: $0.latitude, longitude: $0.longitude) } ?? CLLocationCoordinate2D(latitude: 40.739655, longitude: -73.990921),
            span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        ))
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Group Profile Logo
                if let url = URL(string: group.logoURL) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                    } placeholder: {
                        ProgressView()
                            .frame(height: 200)
                    }
                }

                // Group Stats
                GroupStatsView(group: group)

                // Small Map View
                Text("Nearest Venue")
                    .font(.headline)
                SmallMapView(region: $region, coordinates: group.venues.first?.location.coordinates ?? [])
                    .frame(height: 200)
                    .cornerRadius(10)
                    .padding(.bottom)

                // Admin Message Board
                Text("Admin Message Board")
                    .font(.headline)
        
            }
            .padding()
            .navigationTitle(group.name)
        }
    }
}

struct GroupStatsView: View {
    var group: Group

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Group Status: \(group.accessControl)")
            Text("Members: \(group.membersCount)")
            Text("Venues: \(group.venues.count)")
            Text("Admin: \(group.admin)")
        }
        .font(.subheadline)
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

struct SmallMapView: View {
    @Binding var region: MKCoordinateRegion
    var coordinates: [Coordinate]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: coordinates) { coordinate in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)) {
                Circle()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct GroupDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let group = Group(id: UUID().uuidString, name: "Sample Group", description: "A sample group for testing", logoURL: "https://example.com/group.jpg", accessControl: "Public", membersCount: 10, venues: [Venue(id: UUID().uuidString, name: "Sample Venue", location: Location(type: "Point", coordinates: [Coordinate(latitude: 40.739655, longitude: -73.990921)], radius: 500), groupId: UUID().uuidString, createdAt: Date(), updatedAt: Date())], admin: "Admin", adminMessageBoard: ["adminMessageBoard"], createdAt: Date(), updatedAt: Date())

        return GroupDetailView(group: group)
    }
}
