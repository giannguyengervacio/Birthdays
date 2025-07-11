//
//  ContentView.swift
//  Birthdays
//
//  Created by Orvs on 7/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var newName = ""
    @State private var newBirthday = Date.now
    
    // friends array
    @State private var friends: [Friend] = [
        Friend(name:"Nicole", birthday: .now),
        Friend(name:"Geetika", birthday: .now)
    ]
    
    var body: some View {
        NavigationStack {
            List(friends, id: \.name) { friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format:.dateTime.month(.wide).day().year())
                }
            }
            .navigationTitle("Birthdays")
            .safeAreaInset(edge: .bottom){
                VStack(alignment:.center, spacing:20) {
                    Text("New Birthday")
                        .font(.headline)
                }
            }

        }
    }
    
}
#Preview {
    ContentView()
}
