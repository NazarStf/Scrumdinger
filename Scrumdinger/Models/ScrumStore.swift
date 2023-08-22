//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by NazarStf on 22.08.2023.
//

import SwiftUI

class ScrumStore: ObservableObject {
	@Published var scrums: [DailyScrum] = []
	
	private static func fileURL() throws -> URL {
		try FileManager.default.url(for: .documentDirectory,
									in: .userDomainMask,
									appropriateFor: nil,
									create: false)
		.appendingPathComponent("scrums.data")
	}
}
