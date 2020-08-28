
@available(macOS 10.13, *)
class NSUserInterfaceCompressionOptions : NSObject, NSCopying, NSCoding {
  init(identifier: String)
  init(options: Set<NSUserInterfaceCompressionOptions>)
  func contains(_ options: NSUserInterfaceCompressionOptions) -> Bool
  func intersects(_ options: NSUserInterfaceCompressionOptions) -> Bool
  var isEmpty: Bool { get }
  func union(_ options: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions
  func subtracting(_ options: NSUserInterfaceCompressionOptions) -> NSUserInterfaceCompressionOptions
  @NSCopying class var hideImages: NSUserInterfaceCompressionOptions { get }
  @NSCopying class var hideText: NSUserInterfaceCompressionOptions { get }
  @NSCopying class var reduceMetrics: NSUserInterfaceCompressionOptions { get }
  @NSCopying class var breakEqualWidths: NSUserInterfaceCompressionOptions { get }
  @NSCopying class var standardOptions: NSUserInterfaceCompressionOptions { get }
}
protocol NSUserInterfaceCompression {
  @available(macOS 10.13, *)
  func compress(withPrioritizedCompressionOptions prioritizedOptions: [NSUserInterfaceCompressionOptions])
  @available(macOS 10.13, *)
  func minimumSize(withPrioritizedCompressionOptions prioritizedOptions: [NSUserInterfaceCompressionOptions]) -> NSSize
  @available(macOS 10.13, *)
  @NSCopying var activeCompressionOptions: NSUserInterfaceCompressionOptions { get }
}
