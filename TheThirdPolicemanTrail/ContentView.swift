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
        
        SceneData(id: 0, image1: "Burns-1", image2 : "Burns", place1: "Start",place2: "Burns Liabrary Door",title: "Click on this card to start!",clue: "", quotes: "“It was he who first knocked Old Mathers down with a special bicycle-pump which he manufactured himself out of a hollow iron bar”", details: "Welcome! Before you start, here are some instructions. Each point in the maze will have an information card (like this one). The front will have the name of the item along with a reference quote from The Third Policeman. Then, click on the card to see the image, the name, and a description about the location of the point you have to go to. Once you get to the location, press ‘AR Experience’ to find the item with your device and complete tasks to move on to the next point. Now, exit this screen with the ‘x’ button at the top right and swipe to get to the first point on the maze. Good Luck!"),
        
        SceneData(id: 1, image1: "mazeCover1", image2 : "Maze", place1: "Point A",place2: "Labyrinth", title: "Bicycle Pump", clue:"Find the Bicycle Pump",quotes: "“I knew that old Mathers had been felled by an iron bicycle-pump, hacked to death with a heavy spade and then securely buried in a field.”", details: "On September 11, 2003, a memorial labyrinth was dedicated to the 22 Boston College alumni lost in the 9/11 tragedy. The circle, a perfect form, can be seen as symbolizing eternity, the universe, the repetition of the seasons, the cosmos—the overall perfect plan of the divine. The path through the labyrinth constitutes the longest possible way to arrive at the center. It is important not to hurry the experience, but to submit to its structure and discipline."),
        
        
        SceneData(id: 2, image1: "mazeCover1", image2 : "mainGate", place1: "Point B",place2: "War Memorial",title: "The Wrastler", clue: "Find The Wrastler",quotes: "“It was manufactured in some town in the south and was known as The Wrastler. If you drank three or four pints of it, it was nearly bound to win. ”", details: "This 70-foot-long, two-foot-high serpentine granite wall is etched with the names now of 210 alumni who died in the line of duty in U.S. military conflicts since the start of the First World War."),
        
        SceneData(id: 3, image1: "stMarysCover", image2 : "stMary", place1: "Point C",place2: "St. Mary’s",title: "The Pipe", clue: "Find the Pipe", quotes: "“He took out an enormous pipe and when he stuck it in his face it looked like a great hatchet.”", details: "In 1917, St. Mary’s Hall was the second building constructed on Boston College's Chestnut Hill Campus. The north end of the building contains St. Mary's Chapel, a ”Gothic gem” as one Jesuit described it. A southern wing was added to the structure in 1930, providing a covered cloister walk running north and west to enclose a small garden. This building is currently home to offices of the 145 Jesuit priests on Boston College’s campus."),
        
        SceneData(id: 4, image1: "mazeCover1", image2 : "EaglePillar", place1: "Point D",place2: "Eagle Pillar", title: "Wooden Leg", clue: "Find the Wooden Leg",quotes: "“I smiled at him and pulled up my left trouser-leg to show him my timber shin.”",  details: "The Golden Eagle, originally from Japan, was donated in 1954, when a fan of BC sports donated it to the University, after which it stood in front of Gasson Hall ever since."),
        
        SceneData(id: 5, image1: "mazeCover1", image2 : "Oneilltrail", place1: "Point E",place2: "O'Neill", title: "False Teeth", clue: "Find the False Teeth", quotes: "“He had white enamelled teeth which came, I had no doubt, from Manchester, two rows of them arranged in the interior of his mouth and when he smiled it was a fine sight to see, like delph on a neat country dresser. ”", details: "O’Neill Library opened in 1984 is one of Boston College’s largest research libraries. It is Named after James “Tip” O’Neill who was an American politician who served as the 47th Speaker for the United States House of Representatives from 1977 to 1987, representing northern Boston Massachusetts."),
        
        SceneData(id: 6, image1: "mazeCover1", image2 : "Gasson", place1: "Point F", place2: "Gasson",title: "The Book", clue: "Find the Book", quotes: "“One day I picked up idly an old tattered book in the science master’s study and put it in my pocket to read in bed the next morning as I had just earned the privilege of lying late.”", details: "Built in 1908, Gasson Hall is named after Boston College’s 13th President Father Thomas Gasson S.J. It is one of four main academic buildings on the academic quadrilateral at Boston College. "),
        
        SceneData(id: 7, image1: "mazeCover1", image2 : "Maze", place1: "Point G", place2: "Lyons Hall",title: "The Boxes", clue: "Find the Boxes", quotes: "“Never in my life did I inspect anything more ornamental and well-made. It was a brown chest like those owned by seafaring men or lascars from Singapore, but it was diminutive in a very perfect way as if you were looking at a full-size one through the wrong end of a spy-glass.”", details: "Lyons Hall, home to the Rat Dining Hall and the Office of Student Services, was built in 1951 and named after another one of Boston College’s Presidents, Father Charles Lyons S.J. It is one of four main academic buildings on the academic quadrilateral at Boston College."),
        
        SceneData(id: 8, image1: "mazeCover1", image2 : "fultonHall", place1: "Point H", place2: "Fulton Hall",title: "The Tap", clue: "Find the Tap", quotes: "“Virtually all that remains of de Selby’s work in this regard is his house where his countless taps are still as he left them, though a newer generation of more delicate mind has had the water turned off at the main.”", details: "Fulton Hall, home to Boston College’s Carroll School of Management, is another one of the four main academic buildings on the academic quadrilateral at Boston College. "),
        
        SceneData(id: 9, image1: "mazeCover1", image2 : "Maze", place1: "Point J", place2: "Schiller Institute",title: "The Bucket",clue: "Find the Bucket", quotes: "“Well if you had that box here,’ he said, ‘you could have a bucket of strawberry jam for your tea and if that was not enough you could have a bathful of it to lie in it full-length and if that much did not satisfy you, you could have ten acres of land with strawberry jam spread on it to the height of your two oxters. What do you think of that?”", details: "The Schiller Institute for Integrated Science and Society is the centerpiece of a new 150,000 square-foot science facility. Construction began in the spring of 2019 at a cost of roughly $150 million. Through the Institute, Boston College will explore new interdisciplinary courses in integrated sciences and human-centered engineering, design thinking, implementation science, data analytics, global public health and other fields that will combine elements of science, engineering, humanities, law and entrepreneurship through collaboration with MCAS, BC’s professional schools, and its Shea Center for Entrepreneurship."),
        
        SceneData(id: 10, image1: "mazeCover1", image2 : "Maze", place1: "Point K", place2: "St. Ignacious Statue",title: "The Noose", clue: "Find the Noose", quotes: "“Then how can I be hanged for a murder, even if I did commit it and there is no trial or preliminary proceedings, no caution administered and no hearing before a Commissioner of the Public Peace?”", details: "Installed in 2006, this 10-foot bronze sculpture portrays St. Ignatius of Loyola (1491–1556), founder of the Jesuit order, as a teacher. Created by Pablo Eduardo, a Bolivian-born artist who lives in Gloucester, Massachusetts, the statue, set atop a five-foot granite pedestal on the Higgins green."),
        
        SceneData(id: 11, image1: "mazeCover1", image2 : "Maze", place1: "Point L", place2: "Devlin Hall",title: "Cash-Box Bomb", clue: "Find the Cash-Box Bomb", quotes: "“In the weeks which followed I asked him where the box was a hundred times in a thousand different ways. He never answered in the same way but the answer was always the same. It was in a very safe place.”", details: "Devlin Hall, the third building built on Boston College’s campus in 1924, is the fourth building of the academic quadrilateral and is home to the Undergraduate Office of Admission. "),
        
        SceneData(id: 12, image1: "mazeCover1", image2 : "Maze", place1: "Point M", place2: "The Irish Room at Burns",title: "The Finale", clue: "", quotes: "", details: "The Irish Room highlights a few of our Irish literature and music collections, including books by Samuel Beckett and William Butler Yeats. The paintings in the room are of other notable Irish literary figures. Across the hallway, the O’Brien Fine Print Room features examples of early printed books as well as contemporary volumes from fine presses. The exhibit cases lining the hallway display different themes in Burns and change multiple times a year.")

    ]
    
    
    @State var show = false
    @State var index = 0
    
    
    var body: some View {
        ZStack{
           VStack{
                HStack{
                    Text("Pursuing The Third Policeman")
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
        ExpandView(data: self.$data[self.index], show: self.$show)
        .scaleEffect(self.show ? 1 : 0)
        .frame(width: self.show ? nil : 0, height: self.show ? nil : 0)
        }
    
        .background(Color.black.opacity(0.07).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.all)
    }
}

//Carousel

struct HScrollView : View {
    
    @Binding var data : [SceneData]
    
    //expanding view
    @Binding var show: Bool
    var size : CGRect
    
    var body: some View{
        HStack(spacing: 0){
            ForEach(self.data) {i in
                ZStack (alignment: .bottom){
                    
                    Image(i.image1).resizable().aspectRatio(1, contentMode: .fill)
                        .frame(width: self.size.width - 30, height: self.size.height)
                        .cornerRadius(25)
                        // fix extra spacing
                        .contentShape (Rectangle())
                        .onTapGesture {
                            withAnimation{
                                
                                self.show.toggle()
                            }
                        }
                    
                    VStack (alignment: .leading, spacing: 12){
                        
                        Text (i.title)
                            .font(.title)
                            .fontWeight(.bold)
                            
                        
                        HStack(spacing: 12){
                            Image(systemName: "mappin.circle.fill")
                                .font(.system(size: 25, weight: .bold))
                            
                            Text (i.place1)
                               // .foregroundColor(.gray)
                            
                            
                        }
                        
                        Text (i.quotes)
                        
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
    @Binding var data : SceneData
    @Binding var show : Bool
    
    var body: some View{
        
        VStack{
            // dismiss button
            ZStack(alignment: .topTrailing){
                
                Image (self.data.image2)
                    .resizable()
                    .cornerRadius(25)
                Button (action: {
                    //closing expansion
                    
                    withAnimation{
                        self.show.toggle()
                    }
                }){
                    
                    Image (systemName: "xmark")
                        .foregroundColor(.black)
                        .padding()
                        .background(Color.white)
                        .clipShape(Circle())
                }
                .padding(.trailing)
                .padding(.top, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
            }
          /*  Image(self.data.image)
                .resizable()
                .cornerRadius(25)*/
            VStack (alignment: .leading, spacing: 12){
                
                HStack(spacing: 12){
                    Image(systemName: "mappin.circle.fill")
                        .font(.system(size: 25, weight: .bold))
                    Text (self.data.place2)
                        //.foregroundColor(.gray)
                    
                    
                }
                
                Text (self.data.details)
                
            }
            .padding(.horizontal,25)
            .padding(.bottom,20)
            .foregroundColor(.black)
            .padding(.top)
            
            HStack{
                HStack (spacing: 15){
                    
                    Text (self.data.clue)
                        .font(.body)
                        .fontWeight(.bold)
                    
                    //Text ("(next)")
                      //  .font(.title)
                                        }
                .padding(.leading, 20)
                
                Spacer ()
                
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
}
struct Carousel : UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent1:self)
    }
    
    
    @Binding var data : [SceneData]
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

struct SceneData : Identifiable {
    
    var id : Int
    var image1 : String
    var image2 : String
    var place1 : String
    var place2 : String
    var title : String
    var clue : String
    var quotes : String
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

