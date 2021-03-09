//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


//MODEL


struct ContentView: View {
    
    var RowList: [row] = [
        row(number :1, content: "r1"),
        row(number :2, content: "r2"),
        row(number :3, content: "r3"),
        row(number :4, content: "r4"),
        row(number :5, content: "r5"),
    ]
    
    var body: some View
    {
            VStack
            {
                Text("MasterMind")
                    .font(.title)
                    .padding()
                
                VStack
                {
                    ForEach(RowList, id: \.number){ row in
                        Text("\(row.number) - \(row.content)").font(.title3)
                            .padding()
                            .background(Color.gray)
                    }
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
