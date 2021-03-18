//
//  Buttons.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct Buttons: View {
    
    let label: String
    
    let colorBackground: Color
    
    let action: () -> Void
    var body: some View
    {
            Button(" ", action: { action() })
                .frame(width: 5, height: 5, alignment: .center)
                .padding()
                .background(colorBackground)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(label: " ", colorBackground: .red, action: {print("red")})
    }
}
