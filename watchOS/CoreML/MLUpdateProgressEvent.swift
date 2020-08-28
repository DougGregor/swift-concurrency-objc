
@available(watchOS 6.0, *)
struct MLUpdateProgressEvent : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var trainingBegin: MLUpdateProgressEvent { get }
  static var epochEnd: MLUpdateProgressEvent { get }
  static var miniBatchEnd: MLUpdateProgressEvent { get }
}
