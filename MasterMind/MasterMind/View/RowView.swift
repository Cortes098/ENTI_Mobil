//
//  rowView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct RowView: View {
    
    var test: [Color]
    //var testTwo: Color
    
    
    var width: CGFloat = 40
    var height: CGFloat = 40
    
    
    
    
    var body: some View {
        HStack
        {
            Circle()
                .fill(test[0])
                .frame(width: self.width, height: self.height,  alignment: .center)    
            Circle()
                .fill(test[1])
                .frame(width: self.width, height: self.height,  alignment: .center)
            Circle()
                .fill(test[2])
                .frame(width: self.width, height: self.height,  alignment: .center)
            Circle()
                .fill(test[3])
                .frame(width: self.width, height: self.height,  alignment: .center)
            
        }
    }
}

struct rowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(test: [.black, .blue, .black, .blue])
    }
}
