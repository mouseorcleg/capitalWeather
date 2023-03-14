//
//  ListView.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 03/03/2023.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var vm = ListViewModel()
    
    var body: some View {
        
        VStack {
            SearchBar(searchText: $vm.searchText)
            
            List {
                SingleCityView()
                SingleCityView()
                SingleCityView()
            }
            .listStyle(.inset)
            .navigationTitle("Weather today")
        } //VStack
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
