//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var name = ""
    @State private var age = ""
    @State private var textTitle = "What is your name and age?"
    var body: some View {
        VStack {
            
            
            Text(textTitle)
                .font(.title)
            TextField("Type Name Here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            TextField("Type Age Here...", text: $age)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit Name") {
                textTitle = "Welcome \(name)! You are \(age) years old."
                name = ""
                    showingAlert = true
                
            }
            .alert("Are you sure?", isPresented: $showingAlert){
                Button("Yes", role: .cancel){}
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint (.pink)

        }
        
                .padding()
    }
}

#Preview {
    ContentView()
}
