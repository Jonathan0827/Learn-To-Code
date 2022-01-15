//
//  ContentView.swift
//  App
//
//  Created by 임준협 on 2022/01/05.
//

import SwiftUI

struct ContentView: View {
    @State var toggle = false
    @State var textbtn = ""
    @State var vle: String = ""
    var body: some View {
        VStack {
            Image(systemName: "macpro.gen1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100.0, height: 100.0)
                .padding()
            TextField("Enter key", text: $vle)
            Toggle(isOn: $toggle){
                Text("Hello")
            }.padding()
            if toggle {
                Text("toggle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
