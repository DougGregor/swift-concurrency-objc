
class JRSInputMethodController : NSObject {
  func availableInputMethodLocales() -> [Any]!
  func currentInputMethodName() -> String!
  func currentInputMethodLocale() -> String!
  func setCurrentInputMethodForLocale(_ theLocale: String!)
}
