
extension INInteraction {
  @available(tvOS 11.0, *)
  func parameterValue(for parameter: INParameter) -> Any?
}
@available(tvOS 11.0, *)
class INParameter : NSObject, NSSecureCoding, NSCopying {
  convenience init(for aClass: AnyClass, keyPath: String)
  var parameterClass: AnyClass { get }
  var parameterKeyPath: String { get }
  func isEqual(to parameter: INParameter) -> Bool
  func setIndex(_ index: Int, forSubKeyPath subKeyPath: String)
  func index(forSubKeyPath subKeyPath: String) -> Int
}
