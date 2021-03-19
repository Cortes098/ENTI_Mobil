//
//  fourDotRow.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct FourDotRow: View {
    
    var width: CGFloat = 20
    var height: CGFloat = 20
    
    var colorsArray: [Color]
    
    var body: some View {
    ZStack{
            Rectangle()
                .fill(Color.white)
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack
            {
                HStack
                {
                    Circle()
                        .fill(colorsArray[0])
                        .frame(width: self.width, height: self.height,  alignment: .center)
                    Circle()                        
                        .fill(colorsArray[1])
                        .frame(width: self.width, height: self.height)
                }
                HStack
                {
                    Circle()
                        .fill(colorsArray[2])
                        .frame(width: self.width, height: self.height)
                    Circle()
                        .fill(colorsArray[3])
                        .frame(width: self.width, height: self.height)
                }
            }
        }
    }
}

struct fourDotRow_Previews: PreviewProvider {
    static var previews: some View {
        FourDotRow(colorsArray: [.black, .black, .black, .black])
    }
}
