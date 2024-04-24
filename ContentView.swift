import SwiftUI

struct ContentView: View {
    @State var Product: String = ""
    @State var rockClicked: Bool = false
    @State var humanClicked: Bool = true
    @State var pandaClicked: Bool = false
    @State var beeClicked: Bool = false
    @State var robotClicked: Bool = false
    @State var brainClicked: Bool = false
    @State var rattleClicked: Bool = false
    @State var imageName: String = ""
    var body: some View {
        ZStack{
           VStack {
                Text("Jords Awesome App") 
                    .font(.largeTitle)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Human Mixing Science Lab")
                    .font(.largeTitle)
                    .italic() 
                    .foregroundColor(.white)
                Divider()
                
                HStack{
                    
                    Button(action: {
                        rockClicked.toggle()
                        Boxview()
                        
                    }, label: {
                        Image("Rock")
                            .overlay(
                                Color.gray.opacity(rockClicked ? 0.4: 0.0))
                    }) 
                    
                    Button(action: {
                        
                    }, label: {
                        Image("Human")
                            .overlay(
                                Color.gray.opacity(humanClicked ? 0.4: 0.0))
                    }) 
                    
                } 
                HStack{
                    
                        Button(action: {
                            pandaClicked.toggle()
                            Boxview()
                            
                        }, label: {
                            Image("Panda")
                                .resizable()
                                .overlay(
                                    Color.gray.opacity(pandaClicked ? 0.4: 0.0))
                        })   
                    Button(action: {
                            beeClicked.toggle()
                            Boxview()
                            
                        }, label: {
                            Image("Bee")
                                .resizable()
                                .overlay(
                                    Color.gray.opacity(beeClicked ? 0.4: 0.0))
                        }) 
                        .frame(width: 60, height: 40)
                        Button(action: {
                            robotClicked.toggle()
                            Boxview()
                            
                        }, label: {
                            Image("Robots")
                                .resizable() 
                                .overlay(
                                    Color.gray.opacity(robotClicked ? 0.4: 0.0))
                        }) 
                    
                } 
                HStack{
                    Button(action: {
                        brainClicked.toggle()
                        Boxview()
                        
                    }, label: {
                        Image("OneB.Cell")
                            .resizable() 
                            .overlay(
                                Color.gray.opacity(brainClicked ? 0.4: 0.0))
                    }) 
                    Button(action: {
                        rattleClicked.toggle()
                        Boxview()
                        
                    }, label: {
                        Image("Rattle")
                            .resizable() 
                            .overlay(
                                Color.gray.opacity(rattleClicked ? 0.4: 0.0))
                    }) 
                    
                }
                Text("You got \(Product)")
                   .bold()
                   .foregroundColor(.white)
               Image(imageName)
                   .frame(width: 200, height: 250)
            }
            
           .background(Color.indigo)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        Spacer()
    }
    func Boxview(){
        if rockClicked == true && humanClicked == true {
            Product = "Grug"
            imageName = "Grug"
        }
        if pandaClicked == true && humanClicked == true {
            Product = "Po" 
            imageName = "Po"
        }
        if beeClicked == true && humanClicked == true {
            Product = "Barry the Bee" 
            imageName = "Barry"
        } 
        if robotClicked == true && humanClicked == true {
            Product = "BigWeld" 
            imageName = "Bigweld"
        } 
        if brainClicked == true && humanClicked == true {
            Product = "Beavis and Butt head" 
            imageName = "Beavis and Bhead"
        }
        if rattleClicked == true && humanClicked == true {
            Product = "Boss Baby" 
            imageName = "BB"
        }
        if rockClicked == false && pandaClicked == false && beeClicked == false && robotClicked == false && brainClicked == false && rattleClicked == false {
            Product = "" 
            imageName = ""
        }
        if robotClicked == true && brainClicked == true {
            Product = "Bigweld?" 
            imageName = "Dumb bot"
        }
        if rattleClicked == true && brainClicked == true {
            Product = "Jimbo" 
            imageName = "Jimbo"
        }
        if pandaClicked == true && brainClicked == true {
            Product = "Po?" 
            imageName = "Po?"
        }
        if beeClicked == true && brainClicked == true {
            Product = "Barry the Bee?" 
            imageName = "Barry?"
        }
        if rockClicked == true && brainClicked == true {
            Product = "Grug?" 
            imageName = "Grug?"
        }
        if rockClicked == true && rattleClicked == true {
            Product = "Thunk?" 
            imageName = "Thunk"
        }
        if rockClicked == true && pandaClicked == true && beeClicked == true && robotClicked == true && brainClicked == true && rattleClicked == true {
            Product = "Error" 
            imageName = "Error"
        }
    }
}
