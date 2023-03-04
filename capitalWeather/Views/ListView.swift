//
//  ListView.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 03/03/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            SingleCityView()
            SingleCityView()
            SingleCityView()
        }
        .listStyle(.inset)
        .listRowSeparator(.hidden)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
