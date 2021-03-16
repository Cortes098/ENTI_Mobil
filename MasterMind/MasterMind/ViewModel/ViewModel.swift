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

enum dotColors: Int
{
    case EMPTY = 0
    case YELLOW = 1
    case RED = 2
    case BLACK = 3
    case GREEN = 4
}




class MasterMindViewModel : ObservableObject
{
    @Published var testRow : [dotColors] = [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
    
    var solveSolution: [dotColors] = [dotColors(rawValue: Int.random(in: (1...4)))!,
                                      dotColors(rawValue: Int.random(in: (1...4)))! ,
                                      dotColors(rawValue: Int.random(in: (1...4)))!,
                                      dotColors(rawValue: Int.random(in: (1...4)))!]
    
    
    public func pressRed()
    {
        testRow[0] = .RED
        
    }
    
    public func enumToColor() -> [Color]
    {
        var colorArray = Array<Color>()
        
        for color in testRow
        {
            switch color
            {
            case .BLACK:
                colorArray.append(Color.black)
            case .GREEN:
                colorArray.append(Color.green)
            case .RED:
                colorArray.append(Color.red)
            case .YELLOW:
                colorArray.append(Color.yellow)
            case .EMPTY:
                colorArray.append(Color.gray)
            }
        }
        return colorArray
    }
    
    
    
}


