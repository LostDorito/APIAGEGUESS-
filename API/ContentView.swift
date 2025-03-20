//
//  ContentView.swift
//  API
//
//  Created by  on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm: ViewModel = ViewModel()
    var body: some View {
        VStack {
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
