
@available(watchOS 4.0, *)
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
  @available(watchOS 5.0, *)
  case sequence
}
