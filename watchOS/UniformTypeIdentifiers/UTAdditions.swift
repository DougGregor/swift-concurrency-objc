
@available(watchOS 7.0, *)
extension NSString {
  @available(watchOS 7.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> String
  @available(watchOS 7.0, *)
  func appendingPathExtension(for contentType: UTType) -> String
}
@available(watchOS 7.0, *)
extension NSURL {
  @available(watchOS 7.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> URL
  @available(watchOS 7.0, *)
  func appendingPathExtension(for contentType: UTType) -> URL
}
