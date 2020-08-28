
@available(iOS 14.0, *)
struct GCKeyCode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
}
extension GCKeyCode {
  @available(iOS 14.0, *)
  static let keyA: GCKeyCode
  @available(iOS 14.0, *)
  static let keyB: GCKeyCode
  @available(iOS 14.0, *)
  static let keyC: GCKeyCode
  @available(iOS 14.0, *)
  static let keyD: GCKeyCode
  @available(iOS 14.0, *)
  static let keyE: GCKeyCode
  @available(iOS 14.0, *)
  static let keyF: GCKeyCode
  @available(iOS 14.0, *)
  static let keyG: GCKeyCode
  @available(iOS 14.0, *)
  static let keyH: GCKeyCode
  @available(iOS 14.0, *)
  static let keyI: GCKeyCode
  @available(iOS 14.0, *)
  static let keyJ: GCKeyCode
  @available(iOS 14.0, *)
  static let keyK: GCKeyCode
  @available(iOS 14.0, *)
  static let keyL: GCKeyCode
  @available(iOS 14.0, *)
  static let keyM: GCKeyCode
  @available(iOS 14.0, *)
  static let keyN: GCKeyCode
  @available(iOS 14.0, *)
  static let keyO: GCKeyCode
  @available(iOS 14.0, *)
  static let keyP: GCKeyCode
  @available(iOS 14.0, *)
  static let keyQ: GCKeyCode
  @available(iOS 14.0, *)
  static let keyR: GCKeyCode
  @available(iOS 14.0, *)
  static let keyS: GCKeyCode
  @available(iOS 14.0, *)
  static let keyT: GCKeyCode
  @available(iOS 14.0, *)
  static let keyU: GCKeyCode
  @available(iOS 14.0, *)
  static let keyV: GCKeyCode
  @available(iOS 14.0, *)
  static let keyW: GCKeyCode
  @available(iOS 14.0, *)
  static let keyX: GCKeyCode
  @available(iOS 14.0, *)
  static let keyY: GCKeyCode
  @available(iOS 14.0, *)
  static let keyZ: GCKeyCode
  @available(iOS 14.0, *)
  static let one: GCKeyCode
  @available(iOS 14.0, *)
  static let two: GCKeyCode
  @available(iOS 14.0, *)
  static let three: GCKeyCode
  @available(iOS 14.0, *)
  static let four: GCKeyCode
  @available(iOS 14.0, *)
  static let five: GCKeyCode
  @available(iOS 14.0, *)
  static let six: GCKeyCode
  @available(iOS 14.0, *)
  static let seven: GCKeyCode
  @available(iOS 14.0, *)
  static let eight: GCKeyCode
  @available(iOS 14.0, *)
  static let nine: GCKeyCode
  @available(iOS 14.0, *)
  static let zero: GCKeyCode
  @available(iOS 14.0, *)
  static let returnOrEnter: GCKeyCode
  @available(iOS 14.0, *)
  static let escape: GCKeyCode
  @available(iOS 14.0, *)
  static let deleteOrBackspace: GCKeyCode
  @available(iOS 14.0, *)
  static let tab: GCKeyCode
  @available(iOS 14.0, *)
  static let spacebar: GCKeyCode
  @available(iOS 14.0, *)
  static let hyphen: GCKeyCode
  @available(iOS 14.0, *)
  static let equalSign: GCKeyCode
  @available(iOS 14.0, *)
  static let openBracket: GCKeyCode
  @available(iOS 14.0, *)
  static let closeBracket: GCKeyCode
  @available(iOS 14.0, *)
  static let backslash: GCKeyCode
  @available(iOS 14.0, *)
  static let nonUSPound: GCKeyCode
  @available(iOS 14.0, *)
  static let semicolon: GCKeyCode
  @available(iOS 14.0, *)
  static let quote: GCKeyCode
  @available(iOS 14.0, *)
  static let graveAccentAndTilde: GCKeyCode
  @available(iOS 14.0, *)
  static let comma: GCKeyCode
  @available(iOS 14.0, *)
  static let period: GCKeyCode
  @available(iOS 14.0, *)
  static let slash: GCKeyCode
  @available(iOS 14.0, *)
  static let capsLock: GCKeyCode
  @available(iOS 14.0, *)
  static let F1: GCKeyCode
  @available(iOS 14.0, *)
  static let F2: GCKeyCode
  @available(iOS 14.0, *)
  static let F3: GCKeyCode
  @available(iOS 14.0, *)
  static let F4: GCKeyCode
  @available(iOS 14.0, *)
  static let F5: GCKeyCode
  @available(iOS 14.0, *)
  static let F6: GCKeyCode
  @available(iOS 14.0, *)
  static let F7: GCKeyCode
  @available(iOS 14.0, *)
  static let F8: GCKeyCode
  @available(iOS 14.0, *)
  static let F9: GCKeyCode
  @available(iOS 14.0, *)
  static let F10: GCKeyCode
  @available(iOS 14.0, *)
  static let F11: GCKeyCode
  @available(iOS 14.0, *)
  static let F12: GCKeyCode
  @available(iOS 14.0, *)
  static let printScreen: GCKeyCode
  @available(iOS 14.0, *)
  static let scrollLock: GCKeyCode
  @available(iOS 14.0, *)
  static let pause: GCKeyCode
  @available(iOS 14.0, *)
  static let insert: GCKeyCode
  @available(iOS 14.0, *)
  static let home: GCKeyCode
  @available(iOS 14.0, *)
  static let pageUp: GCKeyCode
  @available(iOS 14.0, *)
  static let deleteForward: GCKeyCode
  @available(iOS 14.0, *)
  static let end: GCKeyCode
  @available(iOS 14.0, *)
  static let pageDown: GCKeyCode
  @available(iOS 14.0, *)
  static let rightArrow: GCKeyCode
  @available(iOS 14.0, *)
  static let leftArrow: GCKeyCode
  @available(iOS 14.0, *)
  static let downArrow: GCKeyCode
  @available(iOS 14.0, *)
  static let upArrow: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadNumLock: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadSlash: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadAsterisk: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadHyphen: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadPlus: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadEnter: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad1: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad2: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad3: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad4: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad5: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad6: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad7: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad8: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad9: GCKeyCode
  @available(iOS 14.0, *)
  static let keypad0: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadPeriod: GCKeyCode
  @available(iOS 14.0, *)
  static let keypadEqualSign: GCKeyCode
  @available(iOS 14.0, *)
  static let nonUSBackslash: GCKeyCode
  @available(iOS 14.0, *)
  static let application: GCKeyCode
  @available(iOS 14.0, *)
  static let power: GCKeyCode
  @available(iOS 14.0, *)
  static let international1: GCKeyCode
  @available(iOS 14.0, *)
  static let international2: GCKeyCode
  @available(iOS 14.0, *)
  static let international3: GCKeyCode
  @available(iOS 14.0, *)
  static let international4: GCKeyCode
  @available(iOS 14.0, *)
  static let international5: GCKeyCode
  @available(iOS 14.0, *)
  static let international6: GCKeyCode
  @available(iOS 14.0, *)
  static let international7: GCKeyCode
  @available(iOS 14.0, *)
  static let international8: GCKeyCode
  @available(iOS 14.0, *)
  static let international9: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG1: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG2: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG3: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG4: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG5: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG6: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG7: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG8: GCKeyCode
  @available(iOS 14.0, *)
  static let LANG9: GCKeyCode
  @available(iOS 14.0, *)
  static let leftControl: GCKeyCode
  @available(iOS 14.0, *)
  static let leftShift: GCKeyCode
  @available(iOS 14.0, *)
  static let leftAlt: GCKeyCode
  @available(iOS 14.0, *)
  static let leftGUI: GCKeyCode
  @available(iOS 14.0, *)
  static let rightControl: GCKeyCode
  @available(iOS 14.0, *)
  static let rightShift: GCKeyCode
  @available(iOS 14.0, *)
  static let rightAlt: GCKeyCode
  @available(iOS 14.0, *)
  static let rightGUI: GCKeyCode
}
