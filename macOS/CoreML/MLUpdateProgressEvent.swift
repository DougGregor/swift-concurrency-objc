
@available(macOS 10.15, *)
struct MLUpdateProgressEvent : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var trainingBegin: MLUpdateProgressEvent { get }
  static var epochEnd: MLUpdateProgressEvent { get }
  static var miniBatchEnd: MLUpdateProgressEvent { get }
}
