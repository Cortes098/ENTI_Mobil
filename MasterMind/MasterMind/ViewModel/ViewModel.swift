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
    case WHITE = 7
    
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
        case .WHITE:
            return .white
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
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
                                                     ]
    @Published var dotSolution : [[dotColors]] = [
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
        [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
    ]
    @Published var endGame: Bool = false
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
    
    public func dotColorSolve(testingRow: [dotColors])-> [dotColors]
    {
        var returnRow : [dotColors] = [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
        
        var auxRow : [dotColors] = testingRow
        var auxSolve : [dotColors] = solveSolution
        
        for (i, _) in testingRow.enumerated() {
            if testingRow[i] == solveSolution[i]
            {
                returnRow[i] = .RED
                auxRow[i] = .EMPTY
                auxSolve[i] = .EMPTY
            }
        }
        
        for (i, _) in testingRow.enumerated()
        {
            for (j, _) in testingRow.enumerated()
            {
                if( (auxRow[i] != .EMPTY) && (auxSolve[j] == testingRow[i]) )
                {
                    returnRow[i] = .WHITE
                    auxRow[i] = .EMPTY
                    auxSolve[j] = .EMPTY
                }
            }
        }
        return returnRow
    }
    
    public func checkCombination()
    {
        if(columnIndex>3)
        {
            dotSolution[rowIndex] = dotColorSolve(testingRow: testRow[rowIndex])
            if dotSolution[rowIndex] == [.RED, .RED, .RED, .RED]
            {
                endGame = true
            }
            rowIndex=rowIndex+1
            columnIndex=0
            return
        }       
    }
    
    public func playAgain()
    {
        solveSolution = [dotColors(rawValue:Int.random(in: (2...5)))!,                             dotColors(rawValue: Int.random(in: (2...5)))!,
                         dotColors(rawValue: Int.random(in: (2...5)))!,
                         dotColors(rawValue: Int.random(in: (2...5)))!]
    
        testRow = [
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
        ]
        
        dotSolution = [
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY],
            [.EMPTY, .EMPTY, .EMPTY, .EMPTY]
        ]
        endGame = false
        rowIndex = 0
        columnIndex = 0
    }
}


extension Array where Element == dotColors {    
    func toColors() -> [Color] {
        return self.map { $0.toColor() }
    }
}
