
// Package feature implements feature policies.
// See: https://w3c.github.io/webappsec-feature-policy
package feature

Value :: *All | None | Allow
All :: ["*"]
None :: Value & ["none"]
Allow :: Value & [...string]

Policy :: {
	Accelerometer:        Value
	AmbientLightSensor:   Value
	Autoplay:             Value
	Battery:              Value
	Camera:               Value
	DisplayCapture:       Value
	DocumentDomain:       Value
	EncryptedMedia:       Value
	FullScreen:           Value
	Geolocation:          Value
	Gyroscope:            Value
	LayoutAnimations:     Value
	LegacyImageFormats:   Value
	Magnetometer:         Value
	Microphone:           Value
	Midi:                 Value
	OversizedImages:      Value
	Payment:              Value
	PictureInPicture:     Value
	PublicKeyCredentials: Value
	SyncXHR:              Value
	USB:                  Value
	WakeLock:             Value
	XRSpatialTracking:    Value
}
