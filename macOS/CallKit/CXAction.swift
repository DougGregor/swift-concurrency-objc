
@available(macOS 11.0, *)
class CXAction : NSObject, NSCopying, NSSecureCoding {
  var uuid: UUID { get }
  var isComplete: Bool { get }
  var timeoutDate: Date { get }
  func fulfill()
  func fail()
}
