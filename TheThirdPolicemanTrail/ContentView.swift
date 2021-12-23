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
    @State var data = [
        
        TravelData(id: 0, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 1, image: "antelope", country: "Arizona", place: "Antelope Canyon", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida."),
        
        TravelData(id: 2, image: "azores", country: "Portugal", place: "Azores", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 3, image: "venice", country: "Italy", place: "Venice", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida."),
        
        TravelData(id: 4, image: "angelfalls", country: "Venezuela", place: "Angel Falls", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida."),
        
        TravelData(id: 5, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 6, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 7, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 8, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 9, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 10, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        
        TravelData(id: 11, image: "yosemite", country: "USA", place: "Yosemite", details: "Sed libero enim sed faucibus turpis in eu mi. Elementum integer enim neque volutpat ac. Eget aliquet nibh praesent tristique magna sit amet. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Vel pretium lectus quam id. Sapien faucibus et molestie ac. Leo vel orci porta non pulvinar neque laoreet suspendisse. Nibh sed pulvinar proin gravida. "),
        

    ]
    
    
    @State var show = false
    @State var index = 0
    
    
    var body: some View {
        ZStack{
           VStack{
                HStack{
                    Text("The Third Policeman Trail")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    
                    Text("\(self.index+1)/\(self.data.count)")
                        .foregroundColor(.gray)
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding()
                GeometryReader{ g in
                
                    Carousel(data: self.$data,index: self.$index, show: self.$show, size: g.frame(in: .global))
                }
                .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.bottom)! + 10)
            }
            
        .opacity(self.show ? 0 : 1)
        ExpandView(data: self.data [self.index], show: self.$show)
        .scaleEffect(self.show ? 1 : 0)
        .frame(width: self.show ? nil : 0, height: self.show ? nil : 0)
        }
    
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

//Carousel

struct HScrollView : View {
    
    @Binding var data : [TravelData]
    
    //expanding view
    @Binding var show: Bool
    var size : CGRect
    
    var body: some View{
        HStack(spacing: 0){
            ForEach(self.data) {i in
                ZStack (alignment: .bottom){
                    
                    Image(i.image).resizable().aspectRatio(1, contentMode: .fill)
                        .frame(width: self.size.width - 30, height: self.size.height).cornerRadius(25)
                        // fix extra spacing
                        .contentShape (Rectangle())
                        .onTapGesture {
                            withAnimation{
                                
                                self.show.toggle()
                            }
                        }
                    
                    VStack (alignment: .leading, spacing: 12){
                        
                        Text (i.place)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        HStack(spacing: 12){
                            Image(systemName: "mappin.circle.fill")
                                .font(.system(size: 25, weight: .bold))
                            
                            Text (i.country)
                                .foregroundColor(.gray)
                            
                            
                        }
                        
                        Text (i.details)
                        
                    }
                    .padding(.horizontal,25)
                    .padding(.bottom,20)
                    .foregroundColor(.white)
                }
                .frame(width: self.size.width, height: self.size.height)
            }
        }
    }
}
//ExpandView

struct ExpandView : View {
    @State var data : TravelData
    @Binding var show : Bool
    
    var body: some View{
        
        VStack{
            // dismiss button
            ZStack(alignment: .topTrailing){
                
                Image (self.data.image)
                    .resizable()
                    .cornerRadius(25)
                Button (action: {
                    //closing expansion
                    
                    withAnimation{
                        self.show.toggle()
                    }
                }){
                    
                    Image (systemName: "xmark")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black.opacity(0.7))
                        .clipShape(Circle())
                }
                .padding(.trailing)
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
            }
          /*  Image(self.data.image)
                .resizable()
                .cornerRadius(25)*/
            VStack (alignment: .leading, spacing: 12){
                
                Text (self.data.place)
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(spacing: 12){
                    Image(systemName: "mappin.circle.fill")
                        .font(.system(size: 25, weight: .bold))
                    
                    Text (self.data.country)
                        //.foregroundColor(.gray)
                    
                    
                }
                
                Text (self.data.details)
                
            }
            .padding(.horizontal,25)
            .padding(.bottom,20)
            .foregroundColor(.black)
            .padding(.top)
            
            HStack{
                HStack{
                    
                    Text ("clue")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text ("(next)")
                        .font(.title)
                                        }
            }
            
            .padding(.leading, 30)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Text("AR Experience")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .padding(.vertical, 25)
                    .frame(width: UIScreen.main.bounds.width / 2.5)
                    .background(Color("Color"))
                    .clipShape(CShape())
            }
        }
    }
}
struct Carousel : UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent1:self)
    }
    
    
    @Binding var data : [TravelData]
    @Binding var index : Int
    @Binding var show : Bool
    
    var size : CGRect
    
    func makeUIView(context: Context) -> UIScrollView{
        let view = UIScrollView ()
        view.contentSize = CGSize (width: size.width * CGFloat(data.count), height: size.height)
        
        let child = UIHostingController(rootView: HScrollView(data: self.$data, show: self.$show, size: self.size))
        child.view.backgroundColor = .clear
        child.view.frame = CGRect (x: 0, y: 0, width: size.width * CGFloat(data.count), height: size.height)
        
        view.addSubview(child.view)
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.isPagingEnabled = true
        view.delegate = context.coordinator
        return view
    }
    
    // updates size with new data
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        for i in 0..<uiView.subviews.count{
            
            uiView.subviews[i].frame = CGRect (x: 0, y: 0, width: size.width * CGFloat(data.count), height: size.height)
        }
        
        uiView.contentSize = CGSize (width: size.width * CGFloat(data.count), height: size.height)
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate {
        
        var parent : Carousel
        
        init(parent1 : Carousel) {
            
            parent = parent1
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            
            let index = Int (scrollView.contentOffset.x / UIScreen.main.bounds.width)
            
            parent.index = index
        }
    }
}

//Sample data

struct TravelData : Identifiable {
    
    var id : Int
    var image : String
    var country : String
    var place : String
    var details : String
}

struct CShape : Shape {
    func path (in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .bottomRight], cornerRadii: CGSize(width: 55, height: 55))
        
        return Path(path.cgPath)
    }
}

class Host : UIHostingController<ContentView>{
    
    override var prefersHomeIndicatorAutoHidden: Bool{
        
        return true
    }
}
 

/*struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}*/

/*struct ARViewContainer: UIViewRepresentable {
    
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
#endif*/

