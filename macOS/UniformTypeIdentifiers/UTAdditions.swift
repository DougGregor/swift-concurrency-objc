
@available(macOS 11.0, *)
extension NSString {
  @available(macOS 11.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> String
  @available(macOS 11.0, *)
  func appendingPathExtension(for contentType: UTType) -> String
}
@available(macOS 11.0, *)
extension NSURL {
  @available(macOS 11.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> URL
  @available(macOS 11.0, *)
  func appendingPathExtension(for contentType: UTType) -> URL
}
