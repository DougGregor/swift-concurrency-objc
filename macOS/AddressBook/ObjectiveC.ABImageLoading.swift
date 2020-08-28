
protocol ABImageClient : NSObjectProtocol {
  func consumeImageData(_ data: Data!, forTag tag: Int)
}
extension ABPerson {
  func setImageData(_ data: Data!) -> Bool
  func imageData() -> Data!
  func beginLoadingImageData(for client: ABImageClient!) -> Int
  class func cancelLoadingImageData(forTag tag: Int)
}
