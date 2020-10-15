
enum VNRequestTextRecognitionLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case accurate
  case fast
}
@available(iOS 13.0, *)
class VNRecognizeTextRequest : VNImageBasedRequest, VNRequestProgressProviding {
  class func supportedRecognitionLanguages(for recognitionLevel: VNRequestTextRecognitionLevel, revision requestRevision: Int) throws -> [String]
  var recognitionLanguages: [String]
  var customWords: [String]
  var recognitionLevel: VNRequestTextRecognitionLevel
  var usesLanguageCorrection: Bool
  var minimumTextHeight: Float
}
@available(iOS 13.0, *)
let VNRecognizeTextRequestRevision1: Int
@available(iOS 14.0, *)
let VNRecognizeTextRequestRevision2: Int
