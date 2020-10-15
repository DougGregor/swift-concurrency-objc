
let IMKModeDictionary: String
let IMKControllerClass: String
let IMKDelegateClass: String
class IMKServer : NSObject {
  init!(name: String!, bundleIdentifier: String!)
  init!(name: String!, controllerClass controllerClassID: AnyClass!, delegateClass delegateClassID: AnyClass!)
  func bundle() -> Bundle!
  @available(macOS 10.7, *)
  func paletteWillTerminate() -> Bool
  @available(macOS 10.7, *)
  func lastKeyEventWasDeadKey() -> Bool
}
