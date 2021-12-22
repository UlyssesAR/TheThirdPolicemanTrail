//
//  ContentView.swift
//  TheThirdPolicemanTrail
//
//  Created by Sarah Kim on 12/21/21.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("The Third Policeman Trail")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Text("1/5")
                        .foregroundColor(.gray)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
            }
        }
    }
}
 
/*struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}*/

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
