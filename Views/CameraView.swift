//
//  CameraView.swift
//  Alphet
//
//  Created by Renaissance Carr on 5/26/25.
//

import SwiftUI

struct CameraView: View {
    @State private var showCamera = false
    @State private var capturedImage: UIImage?

    var body: some View {
        NavigationView {
            VStack {
                if let image = capturedImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 400)
                        .padding()
                } else {
                    Text("Tap the camera to post your outfit")
                        .font(.headline)
                        .padding()
                }

                Spacer()

                Button(action: {
                    showCamera = true
                }) {
                    HStack {
                        Image(systemName: "camera.fill")
                        Text("Open Camera")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
            .navigationTitle("Post Your Fit")
            .sheet(isPresented: $showCamera) {
                ImagePicker(sourceType: .camera, selectedImage: $capturedImage)
            }
        }
    }
}
