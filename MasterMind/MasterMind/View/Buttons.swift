//
//  Buttons.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct Buttons: View {
    
    let label: String
    
    let action: () -> Void
    var body: some View {
        HStack
        {
            Button(" ", action: { action() })
                .frame(width: 5, height: 5, alignment: .center)
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button(" ", action: { action() })
                .frame(width: 15, height: 15, alignment: .center)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button(" ", action: { action() })
                .frame(width: 15, height: 15, alignment: .center)
                .padding()
                .background(Color.red)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button(" ", action: { action() })
                .frame(width: 15, height: 15, alignment: .center)
                .padding()
                .background(Color.green)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button(" ", action: { action() })
                .frame(width: 15, height: 15, alignment: .center)
                .padding()
                .background(Color.black)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            Button(" ", action: { action() })
                .frame(width: 5, height: 5, alignment: .center)
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .font(.title2)
                .cornerRadius(30)
            
        }
        
        
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons(label: " ", action: {print("red")})
    }
}
