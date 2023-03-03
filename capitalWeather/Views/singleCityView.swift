//
//  singleCityView.swift
//  capitalWeather
//
//  Created by Maria Kharybina on 03/03/2023.
//

import SwiftUI

struct singleCityView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.theme.extra)
                .frame(height: 180)
                .padding()
                .shadow(radius: 20, x: 10, y: 10)
                .fixedSize(horizontal: false, vertical: true)
                .overlay {
                    VStack {
                        HStack(alignment: .firstTextBaseline) {
                            Text("London")
                                .padding(.horizontal)
                                .padding(.horizontal)
                                .padding(.horizontal)
                            Spacer()
                            Text("+24")
                                .padding(.trailing)
                                .padding(.trailing)
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
        } // ZStack
    }
}


struct singleCityView_Previews: PreviewProvider {
    static var previews: some View {
        singleCityView()
    }
}
