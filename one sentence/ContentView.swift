//
//  ContentView.swift
//  one sentence
//
//  Created by Jackson Chen on 5/2/22.
//

import SwiftUI

struct ContentView: View {
    //    let sentence = Sentence();
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("One sentence")
            .toolbar {
                ToolbarItemGroup (placement: .bottomBar) {
                    NavigationLink(destination: GearView(), label: {
                        Image(systemName: "gearshape")
                    })
                    NavigationLink(destination: AddView(), label: {
                        Image(systemName: "plus")
                    })
  
                }
                
            }
        }
    }
}
struct GearView : View {
    var body : some View {
        VStack {
            List {
                NavigationLink(destination: AboutView(), label: {
                    Image(systemName: "questionmark.circle")
                    Text("About")
                })
            }
        }
        .navigationTitle("Setting")
    }
}

struct AboutView : View {
    var body : some View {
        VStack {
            Text("This is the One Sentence ios version.")
            Text("The origin Andriod version come from [@Kenmizz](https://github.com/KenMizz/Onesentence)")
        }
        .navigationTitle("About it")
        .offset(y:-30)
    }
}
struct AddView : View {
    @State private var tempStr = ""
    @State private var tempDate = Date.now
    
    var body : some View {
        Form {
            Section(header: Text("add sentence")) {
                TextField("Sentence", text: $tempStr)
                DatePicker("Date", selection: $tempDate)
            }
        }.navigationTitle("Adding")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button ("Save", action: saveSentence)
                }
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "keyboard")
                    })
                    Button("", action: {
                        
                    })
                }
            }
    }
    func saveSentence() {
        print("saved")
    }
}
class Sentence {
    var sentence :String
    var date = Date()
    init (sentence : String, date: Date) {
        self.sentence = sentence
        self.date = date
    }
}
//
//class Sentence: ObservableObject {
//    @Published var sentence : String
//    @Published var date: Date
//    var identifier = UUID()
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}

