//
//  MenuView.swift
//  PopUpMenuSwiftUI
//
//  Created by Nelson Gonzalez on 1/5/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Button(action: {
                
            }) {
                HStack(spacing: 12) {
                    Image(systemName: "house").renderingMode(.original).resizable().frame(width: 38, height: 35)
                    Text("Home").foregroundColor(.black)
                }
            }
            
            Button(action: {
                           
                       }) {
                           HStack(spacing: 12) {
                            Image(systemName: "person").renderingMode(.original).resizable().frame(width: 38, height: 32).offset(x: -2)
                               Text("Profile").foregroundColor(.black)
                           }
                       }
            
            Button(action: {
                           
                       }) {
                           HStack(spacing: 12) {
                               Image(systemName: "pencil").renderingMode(.original).resizable().frame(width: 38, height: 36).offset(x: -2)
                               Text("Edit").foregroundColor(.black)
                           }
                       }
            
            Button(action: {
                           
                       }) {
                           HStack(spacing: 12) {
                               Image(systemName: "gear").renderingMode(.original).resizable().frame(width: 40, height: 36).offset(x: -2)
                               Text("Settings").foregroundColor(.black)
                           }
                       }
        }.padding().background(Color.white).cornerRadius(15)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
