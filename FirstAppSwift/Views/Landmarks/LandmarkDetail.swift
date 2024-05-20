//
//  LandmarkDetails.swift
//  FirstAppSwift
//
//  Created by Shreyash Dewangan on 20/05/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int{
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
            ScrollView {
                MiniMap(coordinate: landmark.locationCoordinate)
                    .frame(height:200)
                
                CircleImage(image: landmark.image).offset(y:-130).padding(.bottom,-130).frame(height:200)
                VStack(alignment: .leading ) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }.font(.subheadline)
                        .foregroundStyle(.secondary)
                    
                    Divider()
                    
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                    
                }.padding()
                Spacer()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }

#Preview {
    let modelData = ModelData()
     return LandmarkDetail(landmark: modelData.landmarks[0])
         .environment(modelData)
}
