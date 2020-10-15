
@available(watchOS 7.0, *)
protocol CMHeadphoneMotionManagerDelegate : NSObjectProtocol {
  @asyncHandler optional func headphoneMotionManagerDidConnect(_ manager: CMHeadphoneMotionManager)
  @asyncHandler optional func headphoneMotionManagerDidDisconnect(_ manager: CMHeadphoneMotionManager)
}
