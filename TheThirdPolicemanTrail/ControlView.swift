//
//  ControlView.swift
//  TheThirdPolicemanTrail
//
//  Created by Sarah Kim on 1/8/22.
//

import SwiftUI

struct ControlView: View{
    var body: some View{
        VStack{
            
            ControlVisibilityToggleButton()
            Spacer()
            ControlButtonBar()
            
        }
    }
}

struct ControlVisibilityToggleButton: View{
    var body: some View {
        HStack{
            
        }
    }
}

struct ControlButtonBar: View{
    var body: some View {
        HStack{
            
        }
        .frame(maxWidth: 500)
        .padding(30)
        .background(Color.black.opacity(0.25))
    }
}
