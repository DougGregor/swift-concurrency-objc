
@available(iOS 14.0, *)
@available(macCatalyst, unavailable)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  func appStoreOverlay(isPresented: Binding<Bool>, configuration: @escaping () -> SKOverlay.Configuration) -> some View
  
}

