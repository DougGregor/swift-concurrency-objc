
@available(tvOS 13.0, *)
class TVTopShelfNamedAttribute : NSObject {
  var name: String { get }
  var values: [String] { get }
  init(name: String, values: [String])
}
