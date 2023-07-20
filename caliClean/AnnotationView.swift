//
//  AnnotationView.swift
//  caliClean
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct AnnotationView: View {
    var location: Location
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(location.name).font(.headline)
                Text("Email: \(location.email)")
                Text("Phone: \(location.phoneNumber)")
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
}
