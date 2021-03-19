//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

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
    case RED = 1
    case BLUE = 2
    case YELLOW = 3
    case ORANGE = 4
    case PURPLE = 5
    case GREEN = 6    
    
    public func toColor() -> Color
    {        
        switch self {
        case .EMPTY:
            return .gray
        case .RED:
            return .red
        case .BLUE:
            return .blue
        case .YELLOW:
            return .yellow
        case .ORANGE:
            return .orange
        case .PURPLE:
            return .purple
        case .GREEN:
            return .green
        }
    }
    
    public static func allColors()->[Color]
    {
        return[
            dotColors.EMPTY.toColor(),
            dotColors.RED.toColor(),
            dotColors.BLUE.toColor(),
            dotColors.YELLOW.toColor(),
            dotColors.ORANGE.toColor(),
            dotColors.PURPLE.toColor(),
            dotColors.GREEN.toColor()
        ]
    }
}

class MasterMindViewModel : ObservableObject
{
    
    
    @Published var testRow : [[dotColors]] = [
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
                                             ]
    @Published var dotSolution : [dotColors] = [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
    
    var rowIndex: Int = 0
    var columnIndex: Int = 0
    
    var solveSolution: [dotColors] = [dotColors(rawValue: Int.random(in: (2...5)))!,
                                      dotColors(rawValue: Int.random(in: (2...5)))!,
                                      dotColors(rawValue: Int.random(in: (2...5)))!,
                                      dotColors(rawValue: Int.random(in: (2...5)))!]
    
    public func colorButtonPressed(color: Int)
    {
        guard columnIndex>3 else {
            testRow[rowIndex][columnIndex] = dotColors(rawValue: color)!
            columnIndex=columnIndex+1
            return
        }
    }
    
    public func eraseColor()
    {
        guard columnIndex<=0 else {
            columnIndex=columnIndex-1
            testRow[rowIndex][columnIndex] = dotColors(rawValue: 0)!
            return
        }
    }
    
    public func checkCombination()
    {
        var checkedN = [Int]()
        
        for (i, _) in testRow[rowIndex].enumerated() {
            if testRow[rowIndex][i].rawValue == solveSolution[i].rawValue
            {
                dotSolution[i] = .RED
                checkedN.append(i)
            }
        }
        rowIndex=rowIndex+1
        columnIndex=0
        
        
        
        
        
    }
}


extension Array where Element == dotColors {    
    func toColors() -> [Color] {
        return self.map { $0.toColor() }
    }
}
