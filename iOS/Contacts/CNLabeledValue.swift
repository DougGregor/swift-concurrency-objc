
@available(iOS 9.0, *)
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
@available(iOS 9.0, *)
let CNLabelHome: String
@available(iOS 9.0, *)
let CNLabelWork: String
@available(iOS 13.0, *)
let CNLabelSchool: String
@available(iOS 9.0, *)
let CNLabelOther: String
@available(iOS 9.0, *)
let CNLabelEmailiCloud: String
@available(iOS 9.0, *)
let CNLabelURLAddressHomePage: String
@available(iOS 9.0, *)
let CNLabelDateAnniversary: String
