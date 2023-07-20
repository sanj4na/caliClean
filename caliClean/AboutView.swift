//
//  AboutView.swift
//  caliClean
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            Color(red: 250/255, green: 248/255, blue: 248/255)
                .ignoresSafeArea()
            
            VStack {
                
                Text("About Us")
                    .font(.custom(
                        "Copperplate Bold",
                        fixedSize: 50))
                    .fontWeight(.bold)
                Spacer()
                
                Image("grouppic")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                
                Text("Aurelia, Sophie, Sanjana, and Ilayda")
                    .font(.custom(
                        "Gill Sans",
                        fixedSize: 15))
                
                Spacer()
                
                Text("65% of Americans don't recycle, so we are trying to help manage the waste by informing people on how to get rid of trash, plastics, hazardous waste, and organic waste properly. Our mission is to expand to all of California to help people learn about proper recycling.")
                    .font(.custom(
                        "Gill Sans",
                        fixedSize: 25))
                
                Spacer()
                
                
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(Color(red: 118/255, green: 200/255, blue: 177/255, opacity: 1.0)))
            .cornerRadius(15)
            .shadow(radius: 15)
            .padding()
            
            
        }
    }
    
    struct AboutView_Previews: PreviewProvider {
        static var previews: some View {
            AboutView()
        }
    }
}
