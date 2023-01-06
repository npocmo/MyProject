import SwiftUI

public struct StartPlayerContentView: View {
    
    public init() {}
    
    public var body: some View {
        #if MY_CUSTOM_RELEASE
        Text("Hello Release, StartPlayerContentView! testik")
            .padding()
        #else
        #endif
        
        #if MY_CUSTOM_DEBUG
        Text("Hello Debug, StartPlayerContentView! testik")
            .padding()
        #else
        #endif
    }
}

public struct StartPlayerContentView_Previews: PreviewProvider {
    public static var previews: some View {
        StartPlayerContentView()
    }
}
