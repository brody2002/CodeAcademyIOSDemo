//
//  GameViewModel.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    // MARK: - Published properties
    
    @Published private var game = Game()

    // MARK: - Internal properties
    
    var correctGuesses: Int {
        game.guessCount.correct
      }
        
      var incorrectGuesses: Int {
        game.guessCount.incorrect
      }
    
    
    var currentQuestion: Question {
        game.currentQuestion
    }
            
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
    
    var guessWasMade: Bool {
        if let _ = game.guesses[currentQuestion] {
            return true
        } else {
            return false
        }
    }
    
    var gameIsOver: Bool {
      game.isOver
    }
    // MARK: - Internal Methods
    
    func makeGuess(atIndex index: Int) {
        game.makeGuessForCurrentQuestion(atIndex: index)
    }
    
    func displayNextScreen() {
        game.updateGameStatus()
    }
    
    func color(forOptionIndex optionIndex: Int) -> Color {
        if let guessedIndex = game.guesses[currentQuestion] {
            if guessedIndex != optionIndex {
                return GameColor.mainColor
            } else if guessedIndex == currentQuestion.correctAnswerIndex {
                return GameColor.correctGuess
            } else {
                return GameColor.incorrectGuess
            }
        } else {
            return GameColor.mainColor
        }
    }
}

#Preview {
    WelcomeView()
}
