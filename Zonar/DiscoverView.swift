//
//  DiscoverView.swift
//  Zonar
//
//  Created by Edward Han on 8/3/24.
//

import Foundation
import SwiftUI
import MapKit

struct DiscoverView: View {
    @EnvironmentObject var appState: AppState
    @State private var discoverableGroups: [Group] = []
    @State private var showMap = true
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 40.739655, longitude: -73.990921),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        NavigationView {
            VStack {
                if showMap {
                    DiscoverGroupMapView(groups: $discoverableGroups, region: $region)
                } else {
                    DiscoverGroupListView(groups: $discoverableGroups)
                }

                Toggle("Show Map", isOn: $showMap)
                    .padding()
            }
            .navigationTitle("Discover Groups")
            .onAppear {
                fetchPublicGroups()
            }
        }
    }

    func fetchPublicGroups() {
        // Simulate fetching public groups from backend
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // Simulate fetching public groups
            discoverableGroups = publicGroups
            print("Public groups fetched: \(discoverableGroups.count) groups found")
        }
    }
}

struct DiscoverGroupListView: View {
    @Binding var groups: [Group]

    var body: some View {
        List(groups) { group in
            NavigationLink(destination: GroupDetailView(group: group)) {
                Text(group.name)
            }
        }
    }
}

struct DiscoverGroupMapView: View {
    @Binding var groups: [Group]
    @Binding var region: MKCoordinateRegion

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: groups.flatMap { $0.venues }) { venue in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: venue.location.coordinates.first?.latitude ?? 0.0, longitude: venue.location.coordinates.first?.longitude ?? 0.0)) {
                Circle()
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 44, height: 44)
            }
        }
    }
}

struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
            .environmentObject(AppState())
    }
}
