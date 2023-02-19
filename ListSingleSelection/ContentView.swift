//
//  ContentView.swift
//  ListSingleSelection
//
//  Created by Satyadev Chauhan on 19/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Environment?
    
    var body: some View {
        ListSingleSelection(items: Environment.allCases, rowContent: { item in
            Text("\(item.title)")
        }, selectedItem: $selected)
        
        Text("Selected environment: \(String(describing: selected?.title))")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
