//
//  ContentView.swift
//  OtherAPP
//
//  Created by Genius(임준협) on 2022/01/08.
//

import SwiftUI

struct Tab: View{
    var body: some View{
        TabView{
            ContentView()
                .tabItem{
                    Image(systemName: "gear.circle")
                    Text("list")
            }
            ContentView2()
                .tabItem{
                    Image(systemName: "questionmark.folder.fill")
                    Text("TextField, alert")
                }
            ContentView3()
                .tabItem{
                    Image(systemName: "gyroscope")
                    Text("form")
                }
            ContentView4()
                .tabItem{
                    Image(systemName: "snowflake.circle")
                    Text("picker")
                }
            ContentView5()
                .tabItem{
                    Image(systemName: "command")
                    Text("Acrion sheet")
                }
        }
        .frame(width: 390.0)
        
        
    }
}

struct ContentView: View {
    @State var names = ["Swift", "Python", "JS"]
    var body: some View {
        
        NavigationView{
            VStack{
                
                List{
                    ForEach(names, id: \.self) { name in
                        Text(name)
                    }
                    .onDelete(perform: del)
                }
                .navigationBarItems(trailing: EditButton())
                .navigationTitle(Text("List"))
            }
        }
    }
    func del(at offsets: IndexSet) {
        if let first = offsets.first {
            names.remove(at: first)
        }
    }
}

struct ContentView2: View{
    @State var txtf : String = ""
    @State private var showingAlert = false
    var body: some View{
        VStack{
            TextField("enter text.", text: $txtf)
            Button(action: {
                self.showingAlert = true
            }) {
                Text("show")
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("alert"), message: Text("Alert"), dismissButton: .default(Text("DISMISS?")))
            }
        }
    }
}
struct ContentView3: View{
    @State var toggle = false
    @State var txt : String = "TXTFEILD"
    var body: some View{
            NavigationView{
                Form{
                    Section(footer:  Text("hello")){
                        Toggle(isOn: $toggle) {
                            Image(systemName: "speedometer")
                            Text("toggle")
                        }
                    }
                    Section(){
                        Button(action: {
                            
                        }) {
                            Text("Advenced!")
                        }.disabled(!toggle)
                    }
                }.navigationTitle(Text("Form!"))
            }
        }
}
struct ContentView4: View{
    @State var languages = ["Swift", "HTML", "CSS", "JavaScript", "Python"]
    @State var colors = ["red", "orange", "yellow", "green", "blue", "purple", "black", "white"]
    @State var selcolor = 0
    @State var txtf: String = ""
    @State var txtf1: String = ""
    @State var txtf2: String = ""
    @State var txtf3: String = ""
    @State var txtf4: String = ""
    var body: some View{
        NavigationView{
            VStack{
                Picker(selection: $languages, label: Text("Texts")){
                ForEach(0 ..< languages.count) {
                    Text(self.languages[$0])
                }
            }
                HStack{
                    TextField("enter text 1.", text: $txtf)
                        .padding(.leading)
                    Button("button") {
                        change()
                    }
                    .padding(.trailing)
                }
                HStack{
                    TextField("enter text 2.", text: $txtf1)
                        .padding(.leading)
                    Button("button") {
                        change1()
                    }
                    .padding(.trailing)
                }
                HStack{
                    TextField("enter text 3.", text: $txtf2)
                        .padding(.leading)
                    Button("button") {
                        change2()
                    }
                    .padding(.trailing)
                }
                HStack{
                    TextField("enter text 4.", text: $txtf3)
                        .padding(.leading)
                    Button("button") {
                        change3()
                    }
                    .padding(.trailing)
                }
                HStack{
                    TextField("enter text 5.", text: $txtf4)
                        .padding(.leading)
                    Button("button") {
                        change4()
                    }
                    .padding(.trailing)
                }


            }.navigationTitle(Text("Picker"))
        }
    }
    func change() {
        languages[0] = txtf
    }
    func change1() {
        languages[1] = txtf1
    }
    func change2() {
        languages[2] = txtf2
    }
    func change3() {
        languages[3] = txtf3
    }
    func change4() {
        languages[4] = txtf4
    }
}
struct ContentView5: View{
    @State var show = false
    var body: some View{
        NavigationView{
            Button(action: {
                self.show = true
            }) {
                Text("ACTION SHEET!")
            }
            .actionSheet(isPresented: $show) {
                ActionSheet(title: Text("act"), buttons: [.default(Text("dismiss")), .cancel(Text("Cancel"))])
            }
        }.navigationTitle(Text("ActionSheet"))
    }
}

struct Tab_Previews: PreviewProvider{
    static var previews: some View{
        Tab()
    }
}
