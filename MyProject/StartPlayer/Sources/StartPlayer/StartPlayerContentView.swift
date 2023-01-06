import SwiftUI

public struct StartPlayerContentView: View {
    
    public init() {}
    
    public var body: some View {
        #if DEBUG
        Text("Hello Debug, StartPlayerContentView! testik")
            .padding()
        #else
        Text("Hello Release, StartPlayerContentView! testik")
            .padding()
        #endif
        
    }
}

public struct StartPlayerContentView_Previews: PreviewProvider {
    public static var previews: some View {
        StartPlayerContentView()
    }
}
