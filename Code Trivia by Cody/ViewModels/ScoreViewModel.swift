//
//  ScoreViewModel.swift
//  Code History Trivia Game by nonStickCode
//
//  Created by Cody McRoy on 4/2/22.
//

import Foundation

struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
