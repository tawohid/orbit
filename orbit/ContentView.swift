//
//  ContentView.swift
//  orbit
//
//  Created by Tawohid, Khalid Hossain on 11/9/19.
//  Copyright © 2019 Tawohid, Khalid Hossain. All rights reserved.
//

import SwiftUI
import RealityKit
import EventKit

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
            let eventStore = EKEventStore()
            switch EKEventStore.authorizationStatus(for: .event) {
            case .authorized:
                self.mockMehndi(store: eventStore)
            case .denied:
                print("Access denied")
            case .notDetermined:
                eventStore.requestAccess(to: .event, completion:
                  {[self] (granted: Bool, error: Error?) -> Void in
                      if granted {
                        self.mockMehndi(store: eventStore)
                      } else {
                            print("Access denied")
                      }
                })
            default:
                print("Case default")
            }
        }
        
        /// Sword
        
        let swordAnchor = try! Experience.loadSword()
        arView.scene.anchors.append(swordAnchor)
        swordAnchor.actions.swordButtonTap.onAction = { entity in
            let eventStore = EKEventStore()
            switch EKEventStore.authorizationStatus(for: .event) {
            case .authorized:
                self.Sword(store: eventStore)
            case .denied:
                print("Access denied")
            case .notDetermined:
                eventStore.requestAccess(to: .event, completion:
                  {[self] (granted: Bool, error: Error?) -> Void in
                      if granted {
                        self.Sword(store: eventStore)
                      } else {
                            print("Access denied")
                      }
                })
            default:
                print("Case default")
            }
          }
        
        /// Animation
        
        let animationAnchor = try! Experience.loadAnimation()
          arView.scene.anchors.append(animationAnchor)
          animationAnchor.actions.animationButtonTap.onAction = { entity in
                let eventStore = EKEventStore()
                switch EKEventStore.authorizationStatus(for: .event) {
                case .authorized:
                    self.Animation(store: eventStore)
                case .denied:
                    print("Access denied")
                case .notDetermined:
                    eventStore.requestAccess(to: .event, completion:
                      {[self] (granted: Bool, error: Error?) -> Void in
                          if granted {
                            self.Animation(store: eventStore)
                          } else {
                                print("Access denied")
                          }
                    })
                default:
                    print("Case default")
                }
            }
        
        ///
        
        let asmeAnchor = try! Experience.loadASME()
          arView.scene.anchors.append(asmeAnchor)
        
          asmeAnchor.actions.asmeButtonTap.onAction = { entity in
              let eventStore = EKEventStore()
              switch EKEventStore.authorizationStatus(for: .event) {
              case .authorized:
                  self.Asme(store: eventStore)
              case .denied:
                  print("Access denied")
              case .notDetermined:
                  eventStore.requestAccess(to: .event, completion:
                    {[self] (granted: Bool, error: Error?) -> Void in
                        if granted {
                          self.Asme(store: eventStore)
                        } else {
                              print("Access denied")
                        }
                  })
              default:
                  print("Case default")
              }
            }
        
        ///
        
        let chaayaAnchor = try! Experience.loadChaaya()
          arView.scene.anchors.append(chaayaAnchor)
        
          chaayaAnchor.actions.chaayaButtonTap.onAction = { entity in
              let eventStore = EKEventStore()
              switch EKEventStore.authorizationStatus(for: .event) {
              case .authorized:
                  self.Chaaya(store: eventStore)
              case .denied:
                  print("Access denied")
              case .notDetermined:
                  eventStore.requestAccess(to: .event, completion:
                    {[self] (granted: Bool, error: Error?) -> Void in
                        if granted {
                          self.Chaaya(store: eventStore)
                        } else {
                              print("Access denied")
                        }
                  })
              default:
                  print("Case default")
              }
            }
        
        ///
        
        let creativeWritingAnchor = try! Experience.loadCreativeWriting()
          arView.scene.anchors.append(creativeWritingAnchor)
        
          creativeWritingAnchor.actions.creativeWritingButtonTap.onAction = { entity in
              let eventStore = EKEventStore()
              switch EKEventStore.authorizationStatus(for: .event) {
              case .authorized:
                  self.creativeWriting(store: eventStore)
              case .denied:
                  print("Access denied")
              case .notDetermined:
                  eventStore.requestAccess(to: .event, completion:
                    {[self] (granted: Bool, error: Error?) -> Void in
                        if granted {
                          self.creativeWriting(store: eventStore)
                        } else {
                              print("Access denied")
                        }
                  })
              default:
                  print("Case default")
              }
            }
        return arView
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    func mockMehndi(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-11-16 18:30:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "Mock Mehndi"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "Visitors Center Atrium"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }

                }
        }
    }
    func Sword(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-11-06 20:00:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "Sword Arts"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "SSA 14.510"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }
    func Animation(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-10-29 18:00:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "International Animation Day"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "SSA Auditorium"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }
    func Asme(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-11-07 19:00:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "ASME 2nd Annual Fundraiser"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "Galaxy Room A"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }
    func Chaaya(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-11-15 19:00:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "Chaaya"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "Founder's Atrium"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }
    func creativeWriting(store: EKEventStore) {
        let calendars = store.calendars(for: .event)
        for calendar in calendars {
            if calendar.title == "UTD Events" {
                let dateFormatterGet = DateFormatter()
                dateFormatterGet.dateFormat = "yyyy-MM-dd HH:mm:ss"
                let startDate = dateFormatterGet.date(from: "2019-11-15 20:00:00")
                let endDate = startDate?.addingTimeInterval(2 * 60 * 60)
                let event = EKEvent(eventStore: store)
                event.calendar = calendar
                event.title = "Feather Guns Creative Writing"
                event.startDate = startDate
                event.endDate = endDate
                event.location = "ATEC Stairs"
                do {
                    try store.save(event, span: .thisEvent)
                    print("Added event to calendar")
                }
                catch {
                   print("Error saving event in calendar")             }
                }
        }
    }


}
