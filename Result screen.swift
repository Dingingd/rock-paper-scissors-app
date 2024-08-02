//
//  Result screen.swift
//  Long Distance Relationship app
//
//  Created by Zi An Dong on 7/14/24.
//

import Foundation
import SwiftUI

struct ResultView: View {
    var userChoice: RockPaperScissors?
    var computerChoice: RockPaperScissors?
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("backgroundColor")
                    .ignoresSafeArea()
                VStack{
                    if let userChoice = userChoice, let computerChoice = computerChoice {
                        
                        if userChoice == computerChoice {
                            Text("It's a tie!")
                                .font(.title2)
                                .bold()
                                .controlSize(/*@START_MENU_TOKEN@*/.extraLarge/*@END_MENU_TOKEN@*/)
                                .padding()
                        } else {
                            if userChoice.beats(computerChoice) {
                                Text("You win!")
                                    .font(.title2)
                                    .bold()
                                    .controlSize(/*@START_MENU_TOKEN@*/.extraLarge/*@END_MENU_TOKEN@*/)
                                    .padding()
                            } else {
                                Text("You lose!")
                                    .font(.title2)
                                    .bold()
                                    .controlSize(/*@START_MENU_TOKEN@*/.extraLarge/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                        
                        Text("You chose: \(userChoice.description)")
                        Text("Computer chose: \(computerChoice.description)")
                    }
                }
                .padding()
            }
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(userChoice: .rock, computerChoice: .scissors)
    }
}
