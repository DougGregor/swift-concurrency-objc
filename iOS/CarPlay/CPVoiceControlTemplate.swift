
@available(iOS 12.0, *)
class CPVoiceControlState : NSObject, NSSecureCoding {
  init(identifier: String, titleVariants: [String]?, image: UIImage?, repeats: Bool)
  var titleVariants: [String]? { get }
  var image: UIImage? { get }
  var identifier: String { get }
  var repeats: Bool { get }
}
@available(iOS 12.0, *)
class CPVoiceControlTemplate : CPTemplate {
  init(voiceControlStates: [CPVoiceControlState])
  var voiceControlStates: [CPVoiceControlState] { get }
  func activateVoiceControlState(withIdentifier identifier: String)
  var activeStateIdentifier: String? { get }
}
