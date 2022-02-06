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
               ObjByLocationGrid()
            
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

//struct
    struct ObjByLocationGrid: View {
        let objects = Objects()
        
        var body: some View{
            VStack{
                ForEach(ObjLocation.allCases, id: \.self){
                    location in
                    if let objByLocation = objects.get(location: location){
                        HorizontalGrid(title: location.label, items: objByLocation)
                    }
                    
                }
            }
        }
    }

struct HorizontalGrid: View {
    //@Binding var showClue:Bool
    var title: String
    var items : [Object]
    private let gridItemLayout = [GridItem(.fixed(300))]
    
    var body: some View{
        VStack(alignment: .leading){
            
            Text (title)
                .font(.title2).bold()
                .padding(.leading,22)
                .padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: gridItemLayout, spacing: 30) {
                    ForEach(0..<items.count) {index in
                        Color(UIColor.secondarySystemFill)
                            .frame(width: 150, height: 300)
                            .cornerRadius(8)
                       //let clue = items[index]
                        //ClueButton(clue: clue) {
                            //print("clue stuff")
                            //self.showClue = false
                        }
                        
                    }
                }
                .padding(.horizontal, 22)
                .padding(.vertical, 10)
            }
        }
    }


struct ClueButton: View {
    let clue: Object
    let action: () -> Void
    
    var body: some View{
        Button(action: {
            self.action()
        }){
            Image(uiImage: self.clue.thumbnail)
                .resizable()
                .frame(height: 300)
                .background(Color(UIColor.secondarySystemFill))
                .cornerRadius(0.8)
        }
    }
}

}
