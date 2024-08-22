//
//  ContentView.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI

struct GameView: View {
    
    let question = Question.allQuestions[1]
    
    
    @State var screenColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    
    var body: some View {
        ZStack {
            screenColor.ignoresSafeArea()
            VStack {
                Text("1 / 5")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            
                            print("Guessed Index is \(answerIndex) and the answer is \(question.correctAnswerIndex)")
                             //The line below should be the last thing learners add in this article
                            screenColor = answerIndex == question.correctAnswerIndex ? GameColor.correctGuess : GameColor.incorrectGuess
                            
                        }) {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
