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

enum dotColors
{
    case EMPTY
    case WHITE
    case RED
    case BLACK
    case GREEN
    case PINK
    case YELLOW
}

struct Row
{
    var color: [dotColors]
}


class MasterMindViewModel : ObservableObject
{
    var rowIndex: Int = 0
    var columnIndex: Int = 0
    
    var allRows: [Row] =
        [
            Row(color: [.EMPTY, .EMPTY, .EMPTY, .EMPTY] ),
            Row(color: [.EMPTY, .EMPTY, .EMPTY, .EMPTY] ),
            Row(color: [.EMPTY, .EMPTY, .EMPTY, .EMPTY] ),
            Row(color: [.EMPTY, .EMPTY, .EMPTY, .EMPTY] ),
        ]
    
    func test() {
        allRows[rowIndex].color[columnIndex] = .GREEN
        
        
    }
    
    
}


