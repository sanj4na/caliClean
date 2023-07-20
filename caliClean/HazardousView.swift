//
//  HazardousView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct HazardousView: View {
    @State var buttonPressed1 = false
    @State var buttonPressed2 = false
    
    var body: some View {
        ZStack {
            Rectangle() // White background for the entire app
                .foregroundColor(.white)
            ZStack(alignment: .top) {
                Color(red: 255/255, green: 234/255, blue: 131/255)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("HAZARDOUS WASTE")
                        .font(.custom("Copperplate Bold", size: 40))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.992, green: 0.992, blue: 0.589))
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true) // Add a fixed height
                    Image("biohazard")
                        .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .frame(width : 100, height : 100)
                    
                    Text("There are six different types of hazardous waste. Toxic, poison, combustible, corrosive, flammable or irritant waste. These are disposed of in a different way than regular trash.")
                    
                        .multilineTextAlignment(.center)
                        .font(.custom("Gill Sans", size: 18)) // Increase font size
                    
                       
                        .frame(maxWidth: .infinity) // Extend the frame width
                        .padding(.bottom, 0)
                    HStack(spacing: 5) { // Adjust spacing between the buttons
                        VStack {
                            Button("Examples of Hazardous Waste")
                            {
                                buttonPressed1.toggle()
                                if buttonPressed1 {
                                    buttonPressed2 = false // Close Regulations when opening Examples
                                }
                            }
                            .padding()
                            .buttonStyle(.borderedProminent)
                            .font(.headline) // Increase font size
                            .foregroundColor(.black)
                            .tint(Color(red: 0.955, green: 0.876, blue: 0.488))
                            if buttonPressed1 {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color(red: 175/255, green: 29/255, blue: 60/255, opacity: 1.0))
                                        .border(Color.black, width: 1)
                                    ScrollView {
                                        Text("Batteries, motor oil, antifreeze, chlorine, propane, hair spray, gasoline, pesticides, paint, e-waste, solvents, household cleaners, etc.")
                                            .font(.custom("Copperplate", size: 18)) // Increase font size
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
                                    .padding(.horizontal)
                                }
                                .frame(maxWidth: .infinity) // Extend the frame width
                            }
                        }
                        
                        VStack {
                            Button("Regulations") {
                                buttonPressed2.toggle()
                                if buttonPressed2 {
                                    buttonPressed1 = false // Close Examples when opening
                                }
                            }
                            .padding()
                            .buttonStyle(.borderedProminent)
                            .font(.headline) // Increase font size
                            .foregroundColor(.black)
                            .tint(Color(red: 0.915, green: 0.841, blue: 0.472))
                            if buttonPressed2 {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color(red: 175/255, green: 29/255, blue: 60/255, opacity: 1.0))
                                        .border(Color.black, width: 1)
                                    ScrollView {
                                        Text("It is illegal to dispose of these items through the drain or trash. Instead, you should bring such items to a S.A.F.E (Solvents/Automotive/Flammables/Electronics) center.")
                                            .font(.custom("Copperplate", size: 18)) // Increase font size
                                            .multilineTextAlignment(.center)
                                            .padding()
                                    }
                                    .padding(.horizontal)
                                }
                                .frame(maxWidth: .infinity) // Extend the frame width
                            }
                        }
                    }
                    
                    VStack {
                        Text("Contact Information for Further Details:")
                            .fontWeight(.semibold)
                            .foregroundColor(Color(red: 0.984, green: 0.984, blue: 0.581))
                            .multilineTextAlignment(.center)
                            .font(.custom("Gill Sans", size: 18))
                        
                        Spacer()
                        Text("The Phone Number of the East LA S.A.F.E Center:")
                            .multilineTextAlignment(.center)
                            .font(.custom("Copperplate", size: 18))
                            .fontWeight(.light)
                        Text("(800) 773-2489")
                            .foregroundColor(Color(red: 0.992, green: 0.992, blue: 0.589))
                            .font(.custom("Copperplate", size:18))
                            .fontWeight(.light)
                          
                        
                        Text("The S.A.F.E origin website with additional info:\nhttps://lacitysan.org")
                            .font(.custom("Copperplate", size: 18)) // Increase font size
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .buttonStyle(.borderedProminent)
                            .font(.custom("Copperplate", size: 18)) // Decrease font size to fit all content
                            .tint(Color(red: 0.992, green: 0.992, blue: 0.589))
                            .padding(20) // Increase padding for the pink box
                            .frame(maxWidth: .infinity) // Extend the frame width
                Spacer()
                    }
                }
                .padding(.top, 40) // Lessen the gap at the top
                .background(Rectangle()
                    .foregroundColor(Color(red: 175/255, green: 29/255, blue: 60/255, opacity: 1.0)))
                .cornerRadius(15)
                .shadow(radius: 15)
                .padding()
            }
        }
    }
}

struct HazardousView_Previews: PreviewProvider {
    static var previews: some View {
        HazardousView()
    }
}
