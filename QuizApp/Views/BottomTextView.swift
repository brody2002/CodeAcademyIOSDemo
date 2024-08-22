//
//  BottomTextView.swift
//  QuizApp
//
//  Created by Brody on 8/22/24.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.title)
                .bold()
                .padding()
                .foregroundColor(GameColor.accentColor)
            Spacer()
        }.background(GameColor.welcomeUnder)
    }
}

#Preview {
    BottomTextView(str: "TEST")
}
