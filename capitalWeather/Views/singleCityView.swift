//
//  SingleCityView.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 03/03/2023.
//

import SwiftUI

struct SingleCityView: View {
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Text("London")
                    .padding(.horizontal)
                Spacer()
                Text("+24")
                    .padding(.trailing)
            }
            .font(.title)
            HStack(alignment: .center, spacing: 20) {
                Spacer()
                VStack {
                    Image(systemName: "sun.haze")
                        .padding()
                }
                .font(.largeTitle)
                VStack(alignment: .leading) {
                    Text("It's rather sunny today")
                    Text("Wind: 26 m/s")
                    Text("Humisity: 76%")
                }
                .font(.title3)
                Spacer()
                Spacer()
            }
        } // main VStack
        .foregroundColor(Color.theme.background)
    }
}


struct singleCityView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCityView()
    }
}
