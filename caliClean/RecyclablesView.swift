//
//  RecyclablesView.swift
//  caliClean
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct RecycablesView: View {
  @State var buttonPressed1 = false
  @State var buttonPressed2 = false
  var body: some View {
    ZStack{
      //fullBackground
      Color(red: 0.641, green: 0.696, blue: 0.542)
        .ignoresSafeArea()
      //roundedRectangleBackground
      RoundedRectangle(cornerRadius: 20)
        .frame(width: 367.0, height: 750.0)
        .foregroundColor(Color(red: 0.853, green: 0.843, blue: 0.804))
      VStack {
        Text("Recyclables")
          .font(.custom("Gill Sans", fixedSize: 40))
          .fontWeight(.bold)
          .foregroundColor(Color(red: 0.204, green: 0.305, blue: 0.256))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Text("Recycleables consist of materials that can be reused and the bins for recycling are usually blue or yellow. There are three basic rules when it comes to recycling: \n 1.Recycle bottles, cans,paper, and cardboard. \n 2.Keep food and liquid out of your recycling. \n 3.No loose plastic bags and no bagged recyclables. \n As long as you follow these three rules your recycling bin will be clear of contamination. Recent studies from 2022 show that only about 33% of recycleable waste is actually recycled. Even though this is past the target for the year of 2022 we need to work to make this number closer to 100%")
          .font(.custom("Gill Sans", fixedSize: 18))
          .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
          .foregroundColor(Color(red: 0.227, green: 0.352, blue: 0.25))
          .padding(.all)
        Image("Rchart")
          .resizable()
          .padding(.horizontal)
          .frame(width: 352.0, height: 182.0)
        HStack{
          VStack{
            Button("Things that are recycleable") {
              buttonPressed1 = true
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .font(.custom("Gill Sans", fixedSize: 20))
            .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
            .tint(/*@START_MENU_TOKEN@*/Color(red: 0.639, green: 0.696, blue: 0.542)/*@END_MENU_TOKEN@*/)
            //Text(t)
            if buttonPressed1 == true {
              Text("-Plastic water bottles \n -aluminum cans \n -Paper \n -carboard \n -Wood scraps")
                .fontWeight(.semibold)
                .font(.custom("Gill Sans", fixedSize: 20))
                .foregroundColor(Color(red: 0.227, green: 0.352, blue: 0.25))
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
            .tint(/*@START_MENU_TOKEN@*/Color(red: 0.639, green: 0.696, blue: 0.542)/*@END_MENU_TOKEN@*/)
            //Text(te)
            if buttonPressed2 == true {
              Text("Visit https://www.wm.com for more inmorfation on what to recycle.")
                .fontWeight(.semibold)
                .font(.custom("Gill Sans", fixedSize: 20))
                .foregroundColor(Color(red: 0.227, green: 0.352, blue: 0.25))
            }
          }
        }
      }
    }
  }
}
  struct RecycablesView_Previews: PreviewProvider {
    static var previews: some View {
        RecycablesView()
    }
}
