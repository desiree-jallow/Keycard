//
//  ContentView.swift
//  Keycard
//
//  Created by Desiree on 2/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.white
                Image("amazon")
                    .resizable()
                    .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .offset(y: -300)
                
                Image("background photo")
                    .resizable()
                    .frame(width: geo.size.width, height: 600)
                    .offset(y: 300)
                    
                Image("IMG_0486")
                    .resizable()
                    .clipShape(Ellipse())
                    .frame(width: 200, height: 270)
                    .overlay(Ellipse().stroke(Color.black, lineWidth: 4))
                    .offset(y: -75)
                 
                VStack {
                    Text("DESIREE' JALLOW")
                        .foregroundColor(.white)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.largeTitle)
                        .padding()
                        
                    
                    Text("iOS Developer")
                        .foregroundColor(Color(.cyan))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.title)
                } .offset(y: 200)
            }
        }
    }
    
}

struct BackView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.white
                Image("background photo")
                    .resizable()
                    .frame(width: geo.size.width, height: 600)
                    .offset(y: -250)
                
                VStack {
                    Image("qr_code")
                    
                    Text("NID: 1234567890")
                        .padding()
                    
                    Text("PHONE: 123-456-7890")
                    
                    Text("MAIL: thisismyemail@gmail.com")
                }
                .offset(y: 75)
                
            }
          
        }
    
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackView_Previews: PreviewProvider {
    static var previews: some View {
       BackView()
    }
}
