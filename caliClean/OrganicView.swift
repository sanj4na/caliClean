//
//  OrganicView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct OrganicView: View {
  @State var buttonPressed1 = false
  @State var buttonPressed2 = false
  var body: some View {
    ZStack{
      //fullBackground
      Color(red: 0.85, green: 0.684, blue: 0.582)
        .ignoresSafeArea()
      //roundedRectangleBackground
      RoundedRectangle(cornerRadius: 20)
        .frame(width: 367.0, height: 750.0)
        .foregroundColor(Color(red: 0.943, green: 0.864, blue: 0.654))
      VStack {
        Text("Organic Waste")
          .font(.custom("Gill Sans", fixedSize: 40))
          .fontWeight(.bold)
          .foregroundColor(Color(hue: 0.19, saturation: 0.251, brightness: 0.414))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Text("Organic waste is also known as compost. If you have a compost bin it is usually green in color, in this bin you can put most food scraps and plant waste. If your local comunity does not have a organic waste collection system you can start your own composting bin. You can create a compost bin by taking a compost or even a large container. make sure to leave some area for the compost to air and add some composting organisms to your bin such as earthworms and fungi. You are ready to start composting.")
          .font(.custom("Gill Sans", fixedSize: 20))
          .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
          .foregroundColor(Color(hue: 0.19, saturation: 0.269, brightness: 0.398))
          .padding(.all)
        ZStack{
          Image("Ochart")
            .resizable()
            .padding(.horizontal)
            .frame(width: 352.0, height: 182.0)
          /*
          background(Rectangle()
            .foregroundColor(.blue))
            .cornerRadius(10)
            .shadow(radius:5)
           .overlay(Rectangle()
           .stroke(Color.blue, lineWidth: 10)
           .padding()
           )
           */
        }
        HStack{
          VStack{
            Button("Things that are compostable") {
              buttonPressed1 = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .font(.custom("Gill Sans", fixedSize: 20))
            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            .tint(/*@START_MENU_TOKEN@*/Color(red: 0.815, green: 0.549, blue: 0.375)/*@END_MENU_TOKEN@*/)
            //Text(t)
            if buttonPressed1 == true {
              Text("-Fruit and vegetable scraps \n -Certian papers \n -Eggshells \n -Tea leaves \n -yard scraps")
                .fontWeight(.semibold)
                .font(.custom("Gill Sans", fixedSize: 18))
                .foregroundColor(Color(hue: 0.19, saturation: 0.269, brightness: 0.398))
            }
          }
          VStack{
            Button("Links") {
              buttonPressed2 = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .font(.custom("Gill Sans", fixedSize: 20))
            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            .tint(/*@START_MENU_TOKEN@*/Color(red: 0.815, green: 0.549, blue: 0.375)/*@END_MENU_TOKEN@*/)
            //Text(te)
            if buttonPressed2 == true {
              Text("Visit https://www.epa.gov/recycle/composting-home \nfor more information on \nwhat to compost.")
                .fontWeight(.semibold)
                .padding()
                .font(.custom("Gill Sans", fixedSize: 18))
                .foregroundColor(Color(hue: 0.19, saturation: 0.269, brightness: 0.398))
            }
          }
        }
      }
    }
  }
}
  struct OrganicView_Previews: PreviewProvider {
    static var previews: some View {
        OrganicView()
    }
}
