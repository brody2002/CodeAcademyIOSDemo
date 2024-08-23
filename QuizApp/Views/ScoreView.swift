//
//  SwiftUIView.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score:")
                    .font(.body)
                Text("\(viewModel.percentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) Correct")
                        .multilineTextAlignment(.center)
                    Text("\(viewModel.incorrectGuesses) Correct")
                        .multilineTextAlignment(.center)
                }.font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 3, incorrectGuesses: 2))
}
