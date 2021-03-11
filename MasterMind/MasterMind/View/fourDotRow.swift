//
//  fourDotRow.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct fourDotRow: View {
    
    
    
    var width: CGFloat = 20
    var height: CGFloat = 20
    var body: some View {
    ZStack{
            Rectangle()
                .fill(Color.gray)
                .frame(width: 60, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack
            {
                HStack
                {
                    Circle()
                        .fill(Color.black)
                        .frame(width: self.width, height: self.height,  alignment: .center)
                    Circle()                        
                        .fill(Color.black)
                        .frame(width: self.width, height: self.height)
                }
            
                HStack
                {
                    Circle()
                        .fill(Color.black)
                        .frame(width: self.width, height: self.height)
                    Circle()
                        .fill(Color.black)
                        .frame(width: self.width, height: self.height)
                }
        }
    }
        
        
       
        
        
    }
}

struct fourDotRow_Previews: PreviewProvider {
    static var previews: some View {
        fourDotRow()
    }
}
