//
//  TitleRow.swift
//  Chatroom
//
//  Created by Chimwemwe Phikiso on 08/05/2022.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://www.dropbox.com/s/ue6i8uhdqxllo5i/jimmy-fermin-bqe0J0b26RQ-unsplash-2.jpg?raw=1")
    var name = "Sarai Morales"
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:50, height:50)
                    .cornerRadius(20)
            } placeholder: {
               ProgressView()
            }
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold().foregroundColor(.white)
                
                Text("Online")
                    .font(.caption.monospaced())
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName:"phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(20)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Blue"))
    }
}
