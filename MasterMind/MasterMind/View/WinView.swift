//
//  WinView.swift
//  MasterMind
//
//  Created by Alumne on 21/3/21.
//

import SwiftUI

struct WinView: View {
    
    var show : Bool
    
    let action: () -> Void
    
    var body: some View {
        ZStack
        {            
                if show == true
                {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height: 100, alignment: .center)
                    Text("You win").colorInvert()
                    Button("PLAY AGAIN", action: { action() })
                        .frame(width: 100, height: 20, alignment: .center)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
        }
    }
}

struct WinView_Previews: PreviewProvider {
    static var previews: some View {
        WinView(show: true, action: {print(" ")})
    }
}
