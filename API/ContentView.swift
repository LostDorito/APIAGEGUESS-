//
//  ContentView.swift
//  API
//
//  Created by  on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    @State var name1: String = "Kanye"
    @StateObject var vm: ViewModel = ViewModel()
    var body: some View {
        VStack {
            TextField("Enter a name!", text: $name1)
                .textFieldStyle(.roundedBorder)
                .frame(width: 100, height: 200)
                .onSubmit {
                    vm.name = name1
                }
            Button(action: {
                Task{
                    
                    do
                    {
                     
                        try await vm.getNameAge()
                        
                    }
                    catch{
                        print(error.localizedDescription)
                    }
                    
                }
            }, label: {
                Text("Button")
            })
            Text("\(vm.age)")
            
            
            
            
            
            
            
        }
    }
}


#Preview {
    ContentView()
}
