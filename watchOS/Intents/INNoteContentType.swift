
@available(watchOS, introduced: 4.0, deprecated: 5.0, message: "This enum is no longer used")
enum INNoteContentType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case text
  case image
}
