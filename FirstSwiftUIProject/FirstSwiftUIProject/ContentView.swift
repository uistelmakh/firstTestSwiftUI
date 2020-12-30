//
//  ContentView.swift
//  FirstSwiftUIProject
//
//  Created by днс on 30.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var showHello = false
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.init(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                    .frame(width: 415, height: 600, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Тест включения Теслы")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.system(size: 30))
            }
            Toggle(isOn: $showHello, label: {
                Image("tesla.png")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
                    .foregroundColor(.red)
                Text("Включить теслу")
                    .fontWeight(.bold)
                    .font(.system(size: 25))
                    .padding(5)
                    .background(Color.init(.green))
                    .foregroundColor(.white)
            }) .padding(.all, 15)
            
            if showHello {
                Text("Тесла включена")
                    .padding()
                    .background(Color.init(.green))
            } else {
                Text("Тесла выключена ")
                    .padding()
                    .background(Color.init(.red))
            }
        }
    }
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
                
        }
    }
}
