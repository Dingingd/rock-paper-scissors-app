//
//  Game code.swift
//  Long Distance Relationship app
//
//  Created by Zi An Dong on 7/14/24.
//

import Foundation
import SwiftUI

enum RockPaperScissors: Int, CustomStringConvertible {
    case rock = 1
    case paper = 2
    case scissors = 3

    var description: String {
        switch self {
        case .rock: return "Rock"
        case .paper: return "Paper"
        case .scissors: return "Scissors"
        }
    }

    func beats(_ opponent: RockPaperScissors) -> Bool {
        switch (self, opponent) {
        case (.rock, .scissors), (.scissors, .paper), (.paper, .rock):
            return true
        default:
            return false
        }
    }
}

struct GameCode: View {
    @State private var navigateToResult = false
    @State private var userChoice: RockPaperScissors?
    @State private var computerChoice: RockPaperScissors?

    var body: some View {
        NavigationStack {
            ZStack {
                Color("backgroundColor")
                    .ignoresSafeArea()

                VStack {
                    Text("Choose your play!")
                        .padding()
                    HStack {
                        Button {
                            self.userChoice = .rock
                            self.ComputerTurn(userChoice: .rock)
                        } label: {
                            Image(systemName: "circle.fill")
                        }
                        .padding()

                        Button {
                            self.userChoice = .paper
                            self.ComputerTurn(userChoice: .paper)
                        } label: {
                            Image(systemName: "paperplane.fill")
                        }
                        .padding()

                        Button {
                            self.userChoice = .scissors
                            self.ComputerTurn(userChoice: .scissors)
                        } label: {
                            Image(systemName: "scissors")
                        }
                        .padding()
                    }
                }
                .navigationDestination(isPresented: $navigateToResult) {
                    ResultView(userChoice: userChoice, computerChoice: computerChoice)
                }
            }
        }
    }

    func ComputerTurn(userChoice: RockPaperScissors) {
        let computerPlay = Int.random(in: 1...3)
        if let computerChoice = RockPaperScissors(rawValue: computerPlay) {
            self.computerChoice = computerChoice
            self.navigateToResult = true
        }
    }
}

struct GameCode_Previews: PreviewProvider {
    static var previews: some View {
        GameCode()
    }
}
