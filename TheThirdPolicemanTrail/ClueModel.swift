//
//  ClueModel.swift
//  TheThirdPolicemanTrail
//
//  Created by Sarah Kim on 1/11/22.
//

import SwiftUI
import RealityKit
import Combine

enum ObjLocation: CaseIterable {
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

class Object {
    var name: String
    var location: ObjLocation
    var thumbnail: UIImage
    var modelEntity: ModelEntity?
    var scaleCompensation: Float
    
    private var cancellable: AnyCancellable?
    init (name: String, location: ObjLocation, scaleCompensation: Float = 1.0){
        self.name = name
        self.location = location
        self.thumbnail = UIImage(named: name) ?? UIImage(systemName: "photo")!
        self.scaleCompensation = scaleCompensation
        
    }
    func asyncLoadObjEntity(){
        let filename = self.name + ".usdz"
        self.cancellable=ModelEntity.loadModelAsync(named:filename)
            .sink(receiveCompletion: {loadCompletion in
                
                switch loadCompletion {
                case .failure(let error): print("Unable to load modelEntity for \(filename). Error: \(error.localizedDescription)")
                case .finished:
                    break
                }
                
            }, receiveValue: { modelEntity in
                
                self.modelEntity = modelEntity
                self.modelEntity?.scale *= self.scaleCompensation
                print("modelEntity for \(self.name) has been loaded")
                
            })
    }
}

struct Objects {
    var all: [Object] = []
    
    init(){
        // pointA
        let bikepump = Object(name: "bikepump", location: .pointA, scaleCompensation: 0.32/100)
        self.all += [bikepump]
        let pipe = Object(name: "pipe", location: .pointB, scaleCompensation: 0.32/100)
        self.all += [pipe]
    }
    
    func get(location: ObjLocation) -> [Object] {
        return all.filter({$0.location == location})
    }
}

