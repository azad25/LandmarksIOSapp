//
//  ContentView.swift
//  Landmarks
//
//  Created by Ferdous Azad on 13/10/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        VStack {
            MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .frame(height: 300)
            
            CircleImageView(image: Image("turtlerock"))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                        
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Dhaka, Bangladesh")
                    .font(.subheadline)
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
