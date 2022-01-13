//
//  ClueModel.swift
//  TheThirdPolicemanTrail
//
//  Created by Sarah Kim on 1/11/22.
//

import SwiftUI
import RealityKit
import Combine

enum ClueLocation: CaseIterable {
    case pointA
    case pointB
    case pointC
    case pointD
    case pointE
    case pointF
    case pointG
    case pointH
    case pointI
    case pointJ
    case pointK
    case pointL
    case pointM
    
    var label: String {
        get {
            switch self {
            case .pointA:
                return "pointA"
            case .pointB:
                return "pointB"
            case .pointC:
                return "pointC"
            case .pointD:
                return "pointD"
            case .pointE:
                return "pointE"
            case .pointF:
                return "pointF"
            case .pointG:
                return "pointG"
            case .pointH:
                return "pointH"
            case .pointI:
                return "pointI"
            case .pointJ:
                return "pointJ"
            case .pointK:
                return "pointK"
            case .pointL:
                return "pointL"
            case .pointM:
                return "pointM"
            }
        }
    }
    
}

class Clue {
    var name: String
    var location: ClueLocation
    var thumbnail: UIImage
    //var scaleCompenation: Float
    init (name: String, location: ClueLocation){
        self.name = name
        self.location = location
        self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
        //self.scaleCompensation = scaleCompensation
        
    }
}
