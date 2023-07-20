//
//  ContentView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            NavigationView {
                VStack{
                    Text("CaliClean")
                        .font(.custom(
                            "Copperplate Bold",
                            fixedSize: 60))
                        .fontWeight(.bold)
                    Text("Click on any image below for helpful information and resources!")
                        .font(.system(size: 18.5))
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .padding()
                    HStack{
                        NavigationLink(destination: HazardousView()) {
                            //Text("Hazardous")
                            Image("hazardpic")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 233/255, green: 245/255, blue: 219/255))  // Set the desired background color
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 5)
                                )
                                .clipped()
                                .padding()}
                        
                        NavigationLink(destination: OrganicView()) {
                            //Text("Organic")
                            Image("organicpic")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 233/255, green: 245/255, blue: 219/255))  // Set the desired background color
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 5)
                                )
                                .clipped()
                                .padding()}
                    }
                    .padding([.top], 40)
                    .padding([.bottom], 40)
                    
                    HStack{
                        NavigationLink(destination: RecycablesView()) {
                            //Text("Recyclables")
                            Image("recyclepic")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 233/255, green: 245/255, blue: 219/255))  // Set the desired background color
                                )
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white, lineWidth: 5)
                                )
                                .clipped()
                                .padding()
                                
                            
                            
                            NavigationLink(destination: LocationView()) {
                                //Text("Location")
                                Image("locationpic")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .background(
                                            RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(red: 233/255, green: 245/255, blue: 219/255)) // Set the desired background color
                                        )
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 5)
                                        )
                                        .clipped()
                                        .padding()
                                }
                            
                        }
                        
                        
                    }
                    Spacer()
                    
                    VStack {
                        NavigationLink(destination: AboutView()) {
                            Text("About Us")
                                .font(.headline)
                                .padding()
                                .background(Color.black)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        
                        
                    } 
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(red: 207/255, green: 225/255, blue: 185/255))
            }
        }
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
            
            
        }
    }
