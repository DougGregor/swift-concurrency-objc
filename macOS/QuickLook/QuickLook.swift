

// MARK: - SwiftUI Additions


// Available when SwiftUI is imported with QuickLook
@available(iOS 14.0, macOS 11.0, *)
@available(tvOS, unavailable)
@available(watchOS, unavailable)
extension View {
  func quickLookPreview<Items>(_ selection: Binding<Items.Element?>, in items: Items) -> some View where Items : RandomAccessCollection, Items.Element == URL
  
  func quickLookPreview(_ item: Binding<URL?>) -> some View
  
}

