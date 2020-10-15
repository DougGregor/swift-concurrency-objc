
@available(tvOS 9.0, *)
protocol URLAuthenticationChallengeSender : NSObjectProtocol {
  func use(_ credential: URLCredential, for challenge: URLAuthenticationChallenge)
  func continueWithoutCredential(for challenge: URLAuthenticationChallenge)
  func cancel(_ challenge: URLAuthenticationChallenge)
  optional func performDefaultHandling(for challenge: URLAuthenticationChallenge)
  optional func rejectProtectionSpaceAndContinue(with challenge: URLAuthenticationChallenge)
}
@available(tvOS 9.0, *)
class URLAuthenticationChallenge : NSObject, NSSecureCoding {
  init(protectionSpace space: URLProtectionSpace, proposedCredential credential: URLCredential?, previousFailureCount: Int, failureResponse response: URLResponse?, error: Error?, sender: URLAuthenticationChallengeSender)
  init(authenticationChallenge challenge: URLAuthenticationChallenge, sender: URLAuthenticationChallengeSender)
  @NSCopying var protectionSpace: URLProtectionSpace { get }
  @NSCopying var proposedCredential: URLCredential? { get }
  var previousFailureCount: Int { get }
  @NSCopying var failureResponse: URLResponse? { get }
  var error: Error? { get }
  var sender: URLAuthenticationChallengeSender? { get }
}
