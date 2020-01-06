//
//  ContentView.swift
//  PopUpMenuSwiftUI
//
//  Created by Nelson Gonzalez on 1/5/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
        ZStack {
            NavigationView {
                Text("Add Something").navigationBarTitle("Home", displayMode: .inline).navigationBarItems(leading: Image(systemName: "person.circle").resizable().frame(width: 30, height: 30).clipShape(Circle()), trailing: Button(action: {
                withAnimation { 
                    self.show.toggle()
                }
            }, label: {
                Image(systemName: "ellipsis").renderingMode(.original).resizable().frame(width: 15, height: 15)
                }))
                
            }
            
            if self.show {
                GeometryReader { _ in
                    MenuView()
                }.background(Color.black.opacity(0.65)).edgesIgnoringSafeArea(.all).onTapGesture {
                    withAnimation {
                        self.show.toggle()
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
