//
//  ContentView.swift
//  Picture Slots
//
//  Created by Alicja Gruca on 17/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var points = 1000
    @State private var pic1 = 1
    @State private var pic2 = 1
    @State private var pic3 = 1
    var body: some View {
        ZStack{
            Color.white
            VStack(spacing:20.0) {
                Text("SwiuftUI Slots!")
                    .font(.largeTitle)
                    .padding(.top, 24 )
                    
                Spacer()
                Text("Credits: " + String(points))
                Spacer()
                HStack{
                    Image("fruit\(pic1)")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                    Image("fruit\(pic2)")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                    Image("fruit\(pic3)")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                }
                Spacer()
                Button {
                    pic1 = Int.random(in: 1...3)
                    pic2 = Int.random(in: 1...3)
                    pic3 = Int.random(in: 1...3)
                    
                    if(pic1 == pic2 && pic1 == pic3){
                        points += 15
                    }
                    else{
                        points -= 5
                    }
                } label: {
                    Text("Spin")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.vertical, 7.0)
                        .padding(.horizontal, 27.0)
                        .background(Color.pink)
                        .cornerRadius(40)
                    
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
