//
//  LocationView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct LocationView: View {
    @State private var selectedCategoryIndex = 0
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.0405, longitude: -118.2674),span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    @State private var wasteCategories: [WasteCategory] = [
        WasteCategory(name: "Hazardous", locations: [
                    Location(name: "SAFE Center - LA Sanitation & Environment", coordinate: CLLocationCoordinate2D(latitude: 34.045, longitude: -118.270), email: "SafeCenterLAS&E@gmail.com", phoneNumber: "800-773-2489"),
                    Location(name: "Haz Away Today", coordinate: CLLocationCoordinate2D(latitude: 34.043, longitude: -118.272), email: "HazAwayTodayLA@gmail.com", phoneNumber: "987-654-3210"),
                    
                ]),
                WasteCategory(name: "Organic", locations: [
                    Location(name: "Evergreen Recycling Inc", coordinate: CLLocationCoordinate2D(latitude: 34.041, longitude: -118.269), email: "EvergreenRecyclingInc@gmail.com", phoneNumber: "213-893-4589"),
                    Location(name: "Griffith Park Composting Facility", coordinate: CLLocationCoordinate2D(latitude: 34.043, longitude: -118.267), email: "GriffithParkComposting@gmail.com", phoneNumber: "128-967-4932"),
                ]),
                WasteCategory(name: "Recyclables", locations: [
                    Location(name: "Downtown Metals & Recycling Center", coordinate: CLLocationCoordinate2D(latitude: 34.042, longitude: -118.271), email: "Downtown Metals&Recycling@gmail.com", phoneNumber: "777-888-9999"),
                    Location(name: "Chris Recycling center", coordinate: CLLocationCoordinate2D(latitude: 34.039, longitude: -118.269), email: "Chris Recyclingcenter@gmail.com", phoneNumber: "444-333-2222"),
                ])
            ]
            
    
    var currentCategory: WasteCategory {
        wasteCategories[selectedCategoryIndex]
    }
    
    var body: some View {
        VStack {
            Picker(selection: $selectedCategoryIndex, label: Text("Select a category")) {
                ForEach(0..<wasteCategories.count) { index in
                    Text(wasteCategories[index].name).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Map(coordinateRegion: $region, annotationItems: currentCategory.locations) { location in
                MapAnnotation(coordinate: location.coordinate) {
                VStack {
                    Image(systemName: "mappin.circle.fill")
                                      .resizable()
                                      .frame(width: 30, height: 30)
                                      .foregroundColor(.red)

                                  Text(location.name)
                                      .font(.caption)
                                      .fontWeight(.bold)
                                      .foregroundColor(.primary)
                              }
                              .padding(8)
                          }
                      }
                      .frame(height: 300)
                      .cornerRadius(10)
            
            List(currentCategory.locations, id: \.id) { location in
                VStack(alignment: .leading) {
                    Text(location.name).font(.headline)
                    Text("Email: \(location.email)")
                    Text("Phone: \(location.phoneNumber)")
                }
                .padding()
            }
            .listStyle(PlainListStyle())
        }
        .navigationBarTitle("Nearby Locations")
        .padding()
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
