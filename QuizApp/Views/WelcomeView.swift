//
//  WelcomeView.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI

struct WelcomeView: View {
    
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions about Brody.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                            .foregroundColor(GameColor.accentColor)
                    }
                    Spacer()
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            BottomTextView(str: "Okay let's GO!")
                        })
                }
                .foregroundColor(Color.accentColor)
            }
        }
    }
}


#Preview {
    WelcomeView()
}
