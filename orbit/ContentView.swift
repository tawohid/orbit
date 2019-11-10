//
//  ContentView.swift
//  orbit
//
//  Created by Tawohid, Khalid Hossain on 11/9/19.
//  Copyright © 2019 Tawohid, Khalid Hossain. All rights reserved.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        /// MockMehndi
        
        let mockMehndiAnchor = try! Experience.loadMockMehndi()
        arView.scene.anchors.append(mockMehndiAnchor)
        
        mockMehndiAnchor.actions.mockMehndiButtonTap.onAction = { entity in
            print("MockMendhi")
        }
        
        /// Sword
        
        let swordAnchor = try! Experience.loadSword()
        arView.scene.anchors.append(swordAnchor)
      
        swordAnchor.actions.swordButtonTap.onAction = { entity in
            print("Sword")
          }
        
        /// Animation
        
        let animationAnchor = try! Experience.loadAnimation()
          arView.scene.anchors.append(animationAnchor)
        
          animationAnchor.actions.animationButtonTap.onAction = { entity in
              print("Animation")
            }
        
        ////
        
        let asmeAnchor = try! Experience.loadASME()
          arView.scene.anchors.append(asmeAnchor)
        
          asmeAnchor.actions.asmeButtonTap.onAction = { entity in
              print("Asme")
            }
        
        ///
        
        let chaayaAnchor = try! Experience.loadChaaya()
          arView.scene.anchors.append(chaayaAnchor)
        
          chaayaAnchor.actions.chaayaButtonTap.onAction = { entity in
              print("Chaaya")
            }
        
        ///
        
        let creativeWritingAnchor = try! Experience.loadCreativeWriting()
          arView.scene.anchors.append(creativeWritingAnchor)
        
          creativeWritingAnchor.actions.creativeWritingButtonTap.onAction = { entity in
              print("Creative Writing")
            }
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}
