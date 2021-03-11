//
//  ButtonView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct ButtonView: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(" ", action: { action() })
            .frame(width: 15, height: 15, alignment: .center)
            .padding()
            .background(Color.gray)
            .foregroundColor(.black)
            .font(.title2)
            .cornerRadius(30)        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView( action: { print("AC" )})
    }
}
