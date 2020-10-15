
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(tvOS 6.0, *)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(tvOS 2.0, *)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didFailWithError error: Error)
  @available(tvOS, introduced: 9.0, deprecated: 14.0)
  @asyncHandler optional func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus)
  @available(tvOS 14.0, *)
  @asyncHandler optional func locationManagerDidChangeAuthorization(_ manager: CLLocationManager)
}
