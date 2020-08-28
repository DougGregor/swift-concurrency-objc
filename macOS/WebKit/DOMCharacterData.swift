
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMCharacterData : DOMNode {
  var data: String!
  var length: UInt32 { get }
  @available(macOS 10.5, *)
  func substringData(_ offset: UInt32, length: UInt32) -> String!
  func appendData(_ data: String!)
  @available(macOS 10.5, *)
  func insertData(_ offset: UInt32, data: String!)
  @available(macOS 10.5, *)
  func deleteData(_ offset: UInt32, length: UInt32)
  @available(macOS 10.5, *)
  func replaceData(_ offset: UInt32, length: UInt32, data: String!)
}
extension DOMCharacterData {
}
