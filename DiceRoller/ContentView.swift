//
//  ContentView.swift
//  DiceRoller
//
//  Created by Tim Eggers on 12/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var diceOne: Int = 1
    @State var diceTwo: Int = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(alignment: .center) {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: diceOne)
                    DiceView(n: diceTwo)
                }
                Spacer()
                Button("Roll") {
                    self.diceOne = Int.random(in: 1...6)
                    self.diceTwo = Int.random(in: 1...6)
                }
                .padding(.all)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 80, alignment: .center)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    var n: Int
    
    var body: some View {
        Image("dice\(n)")
    }
}
