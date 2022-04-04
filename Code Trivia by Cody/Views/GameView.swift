//
//  ContentView.swift
//  Code History Trivia Game by nonStickCode
//
//  Created by Cody McRoy on 3/26/22.
//

import SwiftUI




struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            
            GameColor.main.ignoresSafeArea()
            VStack {
               Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
                    
            }
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                       incorrectGuesses: viewModel.incorrectGuesses)),
                           isActive:
                    .constant(viewModel.gameIsOver),
                           label: { EmptyView() })
        )
        .foregroundColor(.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GameView()
                .previewDevice("iPhone 11 Pro")
                .previewInterfaceOrientation(.portrait)
            
        }
    }
}
