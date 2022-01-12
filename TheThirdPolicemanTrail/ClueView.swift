//
//  ClueView.swift
//  TheThirdPolicemanTrail
//
//  Created by Sarah Kim on 1/10/22.
//

import SwiftUI

struct ClueView: View{
    @Binding var showClue:Bool
    
    var body: some View{
        NavigationView{
            ScrollView(showsIndicators: false){
                HorizontalGrind()
            }
            .navigationBarTitle(Text("Clues"), displayMode: .large)
            .navigationBarItems(trailing:
                Button(action:{
                self.showClue.toggle()
            }){
                Text("Done").bold()
            })
        }
    }
    
}

struct HorizontalGrind: View {
    private let gridItemLayout = [GridItem(.fixed(300))]
    
    var body: some View{
        VStack(alignment: .leading){
            
            Text ("Item")
                .font(.title2).bold()
                .padding(.leading,22)
                .padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: gridItemLayout, spacing: 30) {
                    ForEach(0..<12) {index in
                        Color(UIColor.secondarySystemFill)
                            .frame(width: 150, height: 300)
                            .cornerRadius(8)
                    }
                }
                .padding(.horizontal, 22)
                .padding(.vertical, 10)
            }
        }
    }
}

