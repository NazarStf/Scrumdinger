//
//  DetailView.swift
//  Scrumdinger
//
//  Created by NazarStf on 22.08.2023.
//

import SwiftUI

struct DetailView: View {
	let scrum: DailyScrum
	
	var body: some View {
		Text("Hello, World!")
	}
}

struct DetailView_Previews: PreviewProvider {
	static var previews: some View {
		NavigationStack {
			DetailView(scrum: DailyScrum.sampleData[0])
		}
	}
}
