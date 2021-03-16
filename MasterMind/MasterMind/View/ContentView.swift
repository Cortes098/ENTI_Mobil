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
                    let rawColors=self.viewModel.enumToColor()
                    RowView(test: rawColors)
                    Buttons(label: " ", action: self.viewModel.pressRed)
                    
                    //viewModel.allRows.first
                }
                
                HStack
                {
                    
                }
                
                Text("Tried 2 times")
                    .font(.title2)
                    .padding()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
