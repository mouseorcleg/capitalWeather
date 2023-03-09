//
//  SearchBar.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 07/03/2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(
                    searchText.isEmpty ? Color.theme.accent : Color.theme.extra)
            
            TextField("Search by city name...", text: $searchText)
                .foregroundColor(Color.theme.extra)
                .overlay (
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.theme.extra)
                        .padding()
                        .offset(x: 10)
                        .opacity(searchText.isEmpty ? 0.0 : 1.0)
                        .onTapGesture {
                            searchText = ""
                        }
                    , alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.theme.background.opacity(0.3))
        )
        .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
