
@available(macOS 10.11, *)
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
}
@available(macOS 10.11, *)
let CNLabelPhoneNumberiPhone: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberMobile: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberMain: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberHomeFax: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberWorkFax: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberOtherFax: String
@available(macOS 10.11, *)
let CNLabelPhoneNumberPager: String
