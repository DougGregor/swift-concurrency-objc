
@available(macOS, introduced: 10.6, deprecated: 10.14)
class DOMFileList : DOMObject {
  var length: UInt32 { get }
  func item(_ index: UInt32) -> DOMFile!
}
