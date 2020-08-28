
@available(macOS 10.11, *)
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
@available(macOS 10.11, *)
let CNLabelHome: String
@available(macOS 10.11, *)
let CNLabelWork: String
@available(macOS 10.15, *)
let CNLabelSchool: String
@available(macOS 10.11, *)
let CNLabelOther: String
@available(macOS 10.11, *)
let CNLabelEmailiCloud: String
@available(macOS 10.11, *)
let CNLabelURLAddressHomePage: String
@available(macOS 10.11, *)
let CNLabelDateAnniversary: String
