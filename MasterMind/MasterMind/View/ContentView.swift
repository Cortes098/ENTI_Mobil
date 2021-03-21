//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = MasterMindViewModel()
    
    var body: some View
    {
        ZStack{
            
            VStack
            {
                Text("MasterMind")
                    .font(.title)
                    .colorInvert()
                    .padding()
                VStack
                {
                    ForEach(0..<8) {i in
                        HStack
                        {
                            let rawColors = viewModel.testRow[i].toColors()
                            let dotColor = viewModel.dotSolution[i].toColors()       
                            
                            FourDotRow(colorsArray: dotColor)
                            RowView(test: rawColors)
                        }
                    }
                    HStack
                    {
                        Spacer()
                        Buttons(label: " ", colorBackground:dotColors.toColor(.RED)())
                        {
                            self.viewModel.eraseColor()
                            
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.BLUE)())
                        {
                            self.viewModel.colorButtonPressed(color: 2)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.YELLOW)())
                        {
                            self.viewModel.colorButtonPressed(color: 3)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.ORANGE)())
                        {
                            self.viewModel.colorButtonPressed(color: 4)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.PURPLE)())
                        {
                            self.viewModel.colorButtonPressed(color: 5)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.GREEN)())
                        {
                            self.viewModel.checkCombination()
                        }
                        Spacer()
                    }
                } 
                
                WinView(show: self.viewModel.endGame, action: self.viewModel.playAgain)
            }
    }
            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
