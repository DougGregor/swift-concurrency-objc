
extension INInteraction {
  @available(iOS 11.0, *)
  func parameterValue(for parameter: INParameter) -> Any?
}
@available(iOS 11.0, *)
class INParameter : NSObject, NSSecureCoding, NSCopying {
  convenience init(for aClass: AnyClass, keyPath: String)
  var parameterClass: AnyClass { get }
  var parameterKeyPath: String { get }
  func isEqual(to parameter: INParameter) -> Bool
  func setIndex(_ index: Int, forSubKeyPath subKeyPath: String)
  func index(forSubKeyPath subKeyPath: String) -> Int
}

@available(macOS 10.15, iOS 11.0, watchOS 5.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INParameter {
  @nonobjc convenience init?<Root, Value>(keyPath: KeyPath<Root, Value>)
}
