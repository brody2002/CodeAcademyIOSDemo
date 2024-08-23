//
//  ScoreViewModel.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI
import Foundation

struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int

  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
