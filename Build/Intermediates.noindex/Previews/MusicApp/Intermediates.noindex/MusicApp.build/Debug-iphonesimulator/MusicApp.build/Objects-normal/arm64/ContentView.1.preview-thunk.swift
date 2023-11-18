@_private(sourceFile: "ContentView.swift") import MusicApp
import func SwiftUI.__designTimeBoolean
import func SwiftUI.__designTimeInteger
import protocol SwiftUI.PreviewProvider
import func SwiftUI.__designTimeString
import func SwiftUI.__designTimeFloat
import struct SwiftUI.EmptyView
import protocol SwiftUI.View
import SwiftUI

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/khadichabonuvalieva/My Mac/Coding/Codepath/IOS101_fa2023/MusicApp/MusicApp/ContentView.swift", line: 21)
        VStack {
            Image(systemName: __designTimeString("#8654.[3].[0].property.[0].[0].arg[0].value.[0].arg[0].value", fallback: "globe"))
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(__designTimeString("#8654.[3].[0].property.[0].[0].arg[0].value.[1].arg[0].value", fallback: "Hello, world!"))
        }
        .padding()
    
#sourceLocation()
    }
}

import struct MusicApp.Album
import struct MusicApp.Song
import struct MusicApp.ContentView
#Preview {
    ContentView()
}



