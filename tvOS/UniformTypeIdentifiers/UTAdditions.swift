
@available(tvOS 14.0, *)
extension NSString {
  @available(tvOS 14.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> String
  @available(tvOS 14.0, *)
  func appendingPathExtension(for contentType: UTType) -> String
}
@available(tvOS 14.0, *)
extension NSURL {
  @available(tvOS 14.0, *)
  func appendingPathComponent(_ partialName: String, conformingTo contentType: UTType) -> URL
  @available(tvOS 14.0, *)
  func appendingPathExtension(for contentType: UTType) -> URL
}
