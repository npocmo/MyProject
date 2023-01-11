import SwiftUI

public struct StartPlayerContentView: View {
    
    public init() {
        #if DEBUG
        print("DEBUG")
        #elseif Debug
        print("Debug")
        #elseif DebugTest
        print("DebugTest")
        #elseif Beta
        print("Beta")
        #elseif Release
        print("Release")
        #elseif MY_CUSTOM_DEBUG
        print("MY_CUSTOM_DEBUG")
        #elseif MY_CUSTOM_RELEASE
        print("MY_CUSTOM_RELEASE")
        #else
        print("Other")
        #endif
    }
    
    public var body: some View {
        Text("App").padding()
    }
}

public struct StartPlayerContentView_Previews: PreviewProvider {
    public static var previews: some View {
        StartPlayerContentView()
    }
}
