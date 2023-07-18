//
//  ContentView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        let backgroundColor : Color = Color(red: 233/255, green: 245/255, blue: 219/255)
        
        VStack {
        
            Text("CaliClean")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
                
    
        

        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
                .accentColor(Color.black)
                .background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
