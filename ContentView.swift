//
//  ContentView.swift
//  Long Distance Relationship app
//
//  Created by Zi An Dong on 6/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color("backgroundColor")
                    .ignoresSafeArea()
                
                VStack { 
                    
                    Text("Welcome to Rock Paper Scissors!")
                        .font(.title2)
                        .bold()
                        .controlSize(/*@START_MENU_TOKEN@*/.extraLarge/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    NavigationLink(destination: GameCode()) {
                                        Text("Start")
                                            .foregroundColor(.black)
                                            .frame(width: 300, height: 50)
                                            .background(Color.white)
                                            .cornerRadius(30)
                                    }
                    }
                    }
                    
                }
                
            }
        }


#Preview {
    ContentView()
}

