//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

// LOGICAAAAAAAAAAA
// LOGICAAAAAAAAAAA
// LOGICAAAAAAAAAAA
// LOGICAAAAAAAAAAA


import Foundation
import SwiftUI



public enum answerColor
{
    case CLEAR
    case WHITE
    case RED
}

public enum dotColors: Int, CaseIterable
{
    case EMPTY = 0
    case YELLOW = 1
    case RED = 2
    case BLACK = 3
    case GREEN = 4
    case PINK = 5
    
    public func toColor() -> Color
    {        
        switch self {
        case .EMPTY:
            return .gray
        case .YELLOW:
            return .yellow
        case .RED:
            return .red
        case .BLACK:
            return .black
        case .GREEN:
            return .green
        case .PINK:
            return .pink
        }
    }
    
    public static func allColors()->[Color]
    {
        return [
            dotColors.EMPTY.toColor(),
            dotColors.YELLOW.toColor(),
            dotColors.RED.toColor(),
            dotColors.BLACK.toColor(),
            dotColors.GREEN.toColor(),
            dotColors.PINK.toColor()
        ]
    }

}




class MasterMindViewModel : ObservableObject
{
    @Published var testRow : [dotColors] = [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
    
    var rowIndex: Int = 0
    
    var solveSolution: [dotColors] = [dotColors(rawValue: Int.random(in: (1...4)))!,
                                      dotColors(rawValue: Int.random(in: (1...4)))! ,
                                      dotColors(rawValue: Int.random(in: (1...4)))!,
                                      dotColors(rawValue: Int.random(in: (1...4)))!]
    
    
    
    public func colorButtonPressed(color: Int)
    {
        guard rowIndex>3 else {
            testRow[rowIndex] = dotColors(rawValue: color)!
            rowIndex=rowIndex+1
            return
        }
        
    }
    public func eraseColor()
    {
        guard rowIndex<=0 else {
            rowIndex=rowIndex-1
            testRow[rowIndex] = dotColors(rawValue: 0)!
            return
        }
        
        
        
    }
    
    
    
    
    
}


extension Array where Element == dotColors {
    
    func toColors() -> [Color] {
        return self.map { $0.toColor() }
    }
}
