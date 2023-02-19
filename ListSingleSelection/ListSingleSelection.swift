//
//  ListSingleSelection.swift
//  ListSingleSelection
//
//  Created by Satyadev Chauhan on 19/02/23.
//

import SwiftUI

struct ListSingleSelection<Item: Identifiable, Content: View>: View {
    
    var items: [Item]
    var rowContent: (Item) -> Content
    @Binding var selectedItem: Item?
    
    var body: some View {
        List(items) { item in
            rowContent(item)
                .modifier(CheckmarkModifier(checked: item.id == selectedItem?.id))
                .onTapGesture {
                    self.selectedItem = item
                }
        }
    }
}

struct CheckmarkModifier: ViewModifier {
    var checked: Bool = false
    func body(content: Content) -> some View {
        HStack() {
            content
            Spacer()
            Image(systemName: checked ? "record.circle" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .shadow(radius: 1)
        }
        
    }
}

struct ListSingleSelection_Previews: PreviewProvider {
    static var previews: some View {
        ListSingleSelection(items: Environment.allCases, rowContent: { item in
            Text("\(item.title)")
        }, selectedItem: .constant(Environment.allCases.first))
    }
}
