//
//  Question.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//


import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who is the GOAT of Basketball",
                 possibleAnswers: [
                    "LeBron James",
                    "Stephen Curry",
                    "Micheal Jordan",
                    "Timofey Mozgov"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What's my dogs name?",
                 possibleAnswers: [
                    "Rex",
                    "Scruffy",
                    "Buddy",
                    "Appa"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "Goat programming language",
                 possibleAnswers: [
                    "Python",
                    "Swift",
                    "C++",
                    "GoLang"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "Best Anime?",
                 possibleAnswers: [
                    "Jujutsu Kaisen",
                    "Naruto",
                    "Hajime no Ippo",
                    "One Piece"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "What's my Favorite Number?",
                 possibleAnswers: [
                    "4",
                    "7",
                    "11",
                    "711"
                 ],
                 correctAnswerIndex: 3)
    ]
}
