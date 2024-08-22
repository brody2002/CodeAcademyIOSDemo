//
//  ChoiceTextView.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import Foundation



import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    

    var body: some View {
        Text(choiceText)
          .font(.body)
          .bold()
          .multilineTextAlignment(.center)
          .padding()
          .border(GameColor.accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color(.lightGray)
            ChoiceTextView(choiceText: "Choice text!")
        }
        
    }
}
