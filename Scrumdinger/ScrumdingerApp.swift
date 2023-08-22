//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by NazarStf on 22.08.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
	@StateObject private var store = ScrumStore()
	
	var body: some Scene {
		WindowGroup {
			ScrumsView(scrums: $store.scrums)
				.task {
					do {
						try await store.load()
					} catch {
						fatalError(error.localizedDescription)
					}
				}
		}
	}
}
