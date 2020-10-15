
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(watchOS 2.0, *)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading)
  @available(watchOS 2.0, *)
  optional func locationManagerShouldDisplayHeadingCalibration(_ manager: CLLocationManager) -> Bool
  @available(watchOS 2.0, *)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
  @available(watchOS, introduced: 1.0, deprecated: 7.0)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
  @available(watchOS 7.0, *)
  @asyncHandler optional func locationManagerDidChangeAuthorization(_ manager: CLLocationManager)
}
