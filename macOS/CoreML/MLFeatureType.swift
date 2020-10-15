
@available(macOS 10.13, *)
enum MLFeatureType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case invalid
  case int64
  case double
  case string
  case image
  case multiArray
  case dictionary
  @available(macOS 10.14, *)
  case sequence
}
