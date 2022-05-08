//
//  ContentView.swift
//  Chatroom
//
//  Created by Chimwemwe Phikiso on 07/05/2022.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["yo wassup!", "I'm back in the city, hit me up", "got to go chill with the squalle for now doe!"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                ScrollView {
                    ForEach(messageArray, id: \.self) {
                        text in MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                    }
                } .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
            }
            .background(Color("Blue"))
            MessageField()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
