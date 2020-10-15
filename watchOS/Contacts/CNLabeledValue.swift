
@available(watchOS 2.0, *)
class CNLabeledValue<ValueType> : NSObject, NSCopying, NSSecureCoding where ValueType : NSCopying, ValueType : NSSecureCoding {
  var identifier: String { get }
  var label: String? { get }
  @NSCopying var value: ValueType { get }
  init(label: String?, value: ValueType)
  func settingLabel(_ label: String?) -> Self
  func settingValue(_ value: ValueType) -> Self
  func settingLabel(_ label: String?, value: ValueType) -> Self
  class func localizedString(forLabel label: String) -> String
}
@available(watchOS 2.0, *)
let CNLabelHome: String
@available(watchOS 2.0, *)
let CNLabelWork: String
@available(watchOS 6.0, *)
let CNLabelSchool: String
@available(watchOS 2.0, *)
let CNLabelOther: String
@available(watchOS 2.0, *)
let CNLabelEmailiCloud: String
@available(watchOS 2.0, *)
let CNLabelURLAddressHomePage: String
@available(watchOS 2.0, *)
let CNLabelDateAnniversary: String
