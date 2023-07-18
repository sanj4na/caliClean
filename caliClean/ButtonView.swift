//
//  ButtonView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
        struct ButtonView: View {
          let icons = ["cat", "cat2", "meow", "sideeye"]
          var body: some View {
            NavigationView {
              VStack {
                ForEach(icons, id: \.self) { iconName in
                  NavigationLink(destination: getDestinationView(for: iconName)) {
                    VStack{
                      Image(iconName)
                        .resizable()
                     //  Text(iconName)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                  }
                }
              }
              .navigationBarTitle("Button View")
            }
          }
          func getDestinationView(for iconName: String) -> some View {
            switch iconName {
            case "cat":
              return AnyView(OrganicView())
            case "cat2":
              return AnyView(LocationView())
            case "greenrecycle":
              return AnyView(RecyclablesView())
            case "hazardous":
              return AnyView(HazardousView())
            default:
              return AnyView(EmptyView())
            }
          }
        }
        struct ButtonView_Previews: PreviewProvider {
          static var previews: some View {
            ButtonView()
          }
        }//; (edited)

    /*
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
*/

