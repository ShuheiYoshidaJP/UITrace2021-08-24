//
//  ContentView.swift
//  UITrace2021-08-24
//
//  Created by 吉田周平 on 2021/08/24.
//

import SwiftUI

struct ContentView: View {
    let list = ["Milch", "Brot", "Wasser", "Kaffee"]
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "clear")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.secondary)
                })
                ProgressView(value: 0.5)
                    .accentColor(.green)
                    .scaleEffect(x: 1, y: 4, anchor: .center)
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.red)
                Text("5")
                    .foregroundColor(.red)
            }
            HStack {
                Circle()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.purple)
                Text("NEW WORD")
                    .foregroundColor(.purple)
                    .fontWeight(.bold)
                Spacer()
            }
            HStack {
                Text("Which of these is \"coffee\"?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                Spacer()
            }
            HStack {
                Card(text: "Milch")
                Card(text: "Brot")
            }
            .padding(.bottom)
            HStack {
                Card(text: "Wasser")
                Card(text: "Kafee")
            }
            .padding(.bottom)
            Button(action: {}, label: {
                Text("Check")
                    .foregroundColor(Color(.sRGB,
                                           red: 186/255,
                                           green: 186/255,
                                           blue: 186/255,
                                           opacity: 1.0))
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(.sRGB,
                                      red: 229/255,
                                      green: 229/255,
                                      blue: 229/255,
                                      opacity: 1.0))
                    .cornerRadius(8)
            })
        }
        .padding(.horizontal)
    }
}

struct Card: View {
    
    @State var isSelected = false
    
    var text: String
    
    var borderColor: Color {
        !isSelected ? Color.secondary : Color.blue
    }
    
    var bgColor: Color {
        !isSelected ? Color.clear : Color(red: 226/255, green: 243/255, blue: 1.0)
    }
    
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
            Text(text)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(bgColor)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(borderColor, lineWidth: 2)
        )
        .onTapGesture {
            isSelected.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
