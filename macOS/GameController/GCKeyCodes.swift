
@available(macOS 11.0, *)
struct GCKeyCode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: CFIndex)
  let rawValue: CFIndex
}
extension GCKeyCode {
  @available(macOS 11.0, *)
  static let keyA: GCKeyCode
  @available(macOS 11.0, *)
  static let keyB: GCKeyCode
  @available(macOS 11.0, *)
  static let keyC: GCKeyCode
  @available(macOS 11.0, *)
  static let keyD: GCKeyCode
  @available(macOS 11.0, *)
  static let keyE: GCKeyCode
  @available(macOS 11.0, *)
  static let keyF: GCKeyCode
  @available(macOS 11.0, *)
  static let keyG: GCKeyCode
  @available(macOS 11.0, *)
  static let keyH: GCKeyCode
  @available(macOS 11.0, *)
  static let keyI: GCKeyCode
  @available(macOS 11.0, *)
  static let keyJ: GCKeyCode
  @available(macOS 11.0, *)
  static let keyK: GCKeyCode
  @available(macOS 11.0, *)
  static let keyL: GCKeyCode
  @available(macOS 11.0, *)
  static let keyM: GCKeyCode
  @available(macOS 11.0, *)
  static let keyN: GCKeyCode
  @available(macOS 11.0, *)
  static let keyO: GCKeyCode
  @available(macOS 11.0, *)
  static let keyP: GCKeyCode
  @available(macOS 11.0, *)
  static let keyQ: GCKeyCode
  @available(macOS 11.0, *)
  static let keyR: GCKeyCode
  @available(macOS 11.0, *)
  static let keyS: GCKeyCode
  @available(macOS 11.0, *)
  static let keyT: GCKeyCode
  @available(macOS 11.0, *)
  static let keyU: GCKeyCode
  @available(macOS 11.0, *)
  static let keyV: GCKeyCode
  @available(macOS 11.0, *)
  static let keyW: GCKeyCode
  @available(macOS 11.0, *)
  static let keyX: GCKeyCode
  @available(macOS 11.0, *)
  static let keyY: GCKeyCode
  @available(macOS 11.0, *)
  static let keyZ: GCKeyCode
  @available(macOS 11.0, *)
  static let one: GCKeyCode
  @available(macOS 11.0, *)
  static let two: GCKeyCode
  @available(macOS 11.0, *)
  static let three: GCKeyCode
  @available(macOS 11.0, *)
  static let four: GCKeyCode
  @available(macOS 11.0, *)
  static let five: GCKeyCode
  @available(macOS 11.0, *)
  static let six: GCKeyCode
  @available(macOS 11.0, *)
  static let seven: GCKeyCode
  @available(macOS 11.0, *)
  static let eight: GCKeyCode
  @available(macOS 11.0, *)
  static let nine: GCKeyCode
  @available(macOS 11.0, *)
  static let zero: GCKeyCode
  @available(macOS 11.0, *)
  static let returnOrEnter: GCKeyCode
  @available(macOS 11.0, *)
  static let escape: GCKeyCode
  @available(macOS 11.0, *)
  static let deleteOrBackspace: GCKeyCode
  @available(macOS 11.0, *)
  static let tab: GCKeyCode
  @available(macOS 11.0, *)
  static let spacebar: GCKeyCode
  @available(macOS 11.0, *)
  static let hyphen: GCKeyCode
  @available(macOS 11.0, *)
  static let equalSign: GCKeyCode
  @available(macOS 11.0, *)
  static let openBracket: GCKeyCode
  @available(macOS 11.0, *)
  static let closeBracket: GCKeyCode
  @available(macOS 11.0, *)
  static let backslash: GCKeyCode
  @available(macOS 11.0, *)
  static let nonUSPound: GCKeyCode
  @available(macOS 11.0, *)
  static let semicolon: GCKeyCode
  @available(macOS 11.0, *)
  static let quote: GCKeyCode
  @available(macOS 11.0, *)
  static let graveAccentAndTilde: GCKeyCode
  @available(macOS 11.0, *)
  static let comma: GCKeyCode
  @available(macOS 11.0, *)
  static let period: GCKeyCode
  @available(macOS 11.0, *)
  static let slash: GCKeyCode
  @available(macOS 11.0, *)
  static let capsLock: GCKeyCode
  @available(macOS 11.0, *)
  static let F1: GCKeyCode
  @available(macOS 11.0, *)
  static let F2: GCKeyCode
  @available(macOS 11.0, *)
  static let F3: GCKeyCode
  @available(macOS 11.0, *)
  static let F4: GCKeyCode
  @available(macOS 11.0, *)
  static let F5: GCKeyCode
  @available(macOS 11.0, *)
  static let F6: GCKeyCode
  @available(macOS 11.0, *)
  static let F7: GCKeyCode
  @available(macOS 11.0, *)
  static let F8: GCKeyCode
  @available(macOS 11.0, *)
  static let F9: GCKeyCode
  @available(macOS 11.0, *)
  static let F10: GCKeyCode
  @available(macOS 11.0, *)
  static let F11: GCKeyCode
  @available(macOS 11.0, *)
  static let F12: GCKeyCode
  @available(macOS 11.0, *)
  static let printScreen: GCKeyCode
  @available(macOS 11.0, *)
  static let scrollLock: GCKeyCode
  @available(macOS 11.0, *)
  static let pause: GCKeyCode
  @available(macOS 11.0, *)
  static let insert: GCKeyCode
  @available(macOS 11.0, *)
  static let home: GCKeyCode
  @available(macOS 11.0, *)
  static let pageUp: GCKeyCode
  @available(macOS 11.0, *)
  static let deleteForward: GCKeyCode
  @available(macOS 11.0, *)
  static let end: GCKeyCode
  @available(macOS 11.0, *)
  static let pageDown: GCKeyCode
  @available(macOS 11.0, *)
  static let rightArrow: GCKeyCode
  @available(macOS 11.0, *)
  static let leftArrow: GCKeyCode
  @available(macOS 11.0, *)
  static let downArrow: GCKeyCode
  @available(macOS 11.0, *)
  static let upArrow: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadNumLock: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadSlash: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadAsterisk: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadHyphen: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadPlus: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadEnter: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad1: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad2: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad3: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad4: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad5: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad6: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad7: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad8: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad9: GCKeyCode
  @available(macOS 11.0, *)
  static let keypad0: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadPeriod: GCKeyCode
  @available(macOS 11.0, *)
  static let keypadEqualSign: GCKeyCode
  @available(macOS 11.0, *)
  static let nonUSBackslash: GCKeyCode
  @available(macOS 11.0, *)
  static let application: GCKeyCode
  @available(macOS 11.0, *)
  static let power: GCKeyCode
  @available(macOS 11.0, *)
  static let international1: GCKeyCode
  @available(macOS 11.0, *)
  static let international2: GCKeyCode
  @available(macOS 11.0, *)
  static let international3: GCKeyCode
  @available(macOS 11.0, *)
  static let international4: GCKeyCode
  @available(macOS 11.0, *)
  static let international5: GCKeyCode
  @available(macOS 11.0, *)
  static let international6: GCKeyCode
  @available(macOS 11.0, *)
  static let international7: GCKeyCode
  @available(macOS 11.0, *)
  static let international8: GCKeyCode
  @available(macOS 11.0, *)
  static let international9: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG1: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG2: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG3: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG4: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG5: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG6: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG7: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG8: GCKeyCode
  @available(macOS 11.0, *)
  static let LANG9: GCKeyCode
  @available(macOS 11.0, *)
  static let leftControl: GCKeyCode
  @available(macOS 11.0, *)
  static let leftShift: GCKeyCode
  @available(macOS 11.0, *)
  static let leftAlt: GCKeyCode
  @available(macOS 11.0, *)
  static let leftGUI: GCKeyCode
  @available(macOS 11.0, *)
  static let rightControl: GCKeyCode
  @available(macOS 11.0, *)
  static let rightShift: GCKeyCode
  @available(macOS 11.0, *)
  static let rightAlt: GCKeyCode
  @available(macOS 11.0, *)
  static let rightGUI: GCKeyCode
}
