//
//  rowView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct rowView: View {
    
    var width: CGFloat = 40
    var height: CGFloat = 40
    
    var body: some View {
        HStack
        {
            Circle()
                .fill(Color.black)
                .frame(width: self.width, height: self.height,  alignment: .center)
                
                
            Circle()
                .fill(Color.black)
                .frame(width: self.width, height: self.height,  alignment: .center)
            Circle()
                .fill(Color.black)
                .frame(width: self.width, height: self.height,  alignment: .center)
            Circle()
                .fill(Color.black)
                .frame(width: self.width, height: self.height,  alignment: .center)
            
        }
    }
}

struct rowView_Previews: PreviewProvider {
    static var previews: some View {
        rowView()
    }
}
