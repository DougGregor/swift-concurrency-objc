
@available(macOS 10.15, *)
class NSColorSampler : NSObject {
  func show(selectionHandler: @escaping (NSColor?) -> Void)
}
