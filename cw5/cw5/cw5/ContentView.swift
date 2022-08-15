//
//  ContentView.swift
//  cw5
//
//  Created by Fatma Alarbash on 14/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            row(Mycounter: $counter[0], title: "أستغفر الله العظيم")
            row(Mycounter: $counter[1], title: "سبحان الله وبحمده")
            row(Mycounter: $counter[2], title: "سبحان الله العظيم")
        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct row: View {
    @Binding var Mycounter :Int
    @State var title:String
    var body: some View {
        HStack{
            Text(title).font(.title)
            Text("\(Mycounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.orange.opacity(0.7))
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    Mycounter = Mycounter + 1
                }
        }.padding()
    }
}
