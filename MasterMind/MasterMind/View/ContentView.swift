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
        
            VStack
            {
                Text("MasterMind")
                    .font(.title)
                    .padding()
                
                VStack
                {
                    let rawColors = viewModel.testRow.toColors()
                    RowView(test: rawColors)
                    HStack
                    {
                        Spacer()
                        Buttons(label: " ", colorBackground:dotColors.toColor(.BLACK)())
                        {
                            self.viewModel.eraseColor()
                            
                        }
                        
                        
                        Buttons(label: " ", colorBackground: dotColors.toColor(.YELLOW)())
                        {
                            self.viewModel.colorButtonPressed(color: 1)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.RED)())
                        {
                            self.viewModel.colorButtonPressed(color: 2)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.BLACK)())
                        {
                            self.viewModel.colorButtonPressed(color: 3)
                        }
                        Buttons(label: " ", colorBackground: dotColors.toColor(.GREEN)())
                        {
                            self.viewModel.colorButtonPressed(color: 4)
                        }
                        Spacer()
                    }
                }
                
                
                Text("Tried 2 times")
                    .font(.title2)
                    .padding()
                Spacer()
            }
            
            .background(Color.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
