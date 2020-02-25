// This example shows how simple configurations can be built by specifying
// individual policies and leaving the rest to defaults.

import (
	"github.com/vsekhar/webconfig"
	"github.com/vsekhar/webconfig/policies/feature"
	"github.com/vsekhar/webconfig/policies/enforcement"
	"github.com/vsekhar/webconfig/policies/referrer"
)

// Create a new Web Configuration starting with the defaults, which we will
// customize below.
WebConfig: webconfig.Default
WebConfig: {

	// Referrer policy
	// ---------------
	//
	// Normally, the Referer header is omitted only when a connection is
	// downgraded ("no-referrer-when-downgrade" in the spec). Here we override
	// this default behavior to never send a referrer, but do so on a report-
	// only basis. This will cause the browser to report instances where a
	// referrer would have been sent but was not due to this policy.
	//
	Policies: Referrer: Value: referrer.NoReferrer
	Policies: Referrer: Enforcement: enforcement.ReportOnly & {URL: "analytics.com"}

	// Prevent geolocation access
	Policies: Feature: Geolocation: feature.None

	// Allow payment access for only the first-party origin ("self") and their
	// payment provider.
	Policies: Feature: Payment: ["self", "https://paymentprovider.example"]
}
