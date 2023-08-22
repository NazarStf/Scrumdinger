//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by NazarStf on 22.08.2023.
//

import SwiftUI

struct MeetingView: View {
	var body: some View {
		VStack {
			ProgressView(value: 10, total: 15)
			HStack {
				VStack(alignment: .leading) {
					Text("Seconds Elapsed")
						.font(.caption)
					Label("300", systemImage: "hourglass.tophalf.fill")
				}
				Spacer()
				VStack(alignment: .trailing) {
					Text("Seconds Remaining")
						.font(.caption)
					Label("600", systemImage: "hourglass.bottomhalf.fill")
				}
			}
		}
	}
}

struct MeetingView_Previews: PreviewProvider {
	static var previews: some View {
		MeetingView()
	}
}
