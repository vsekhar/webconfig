package policies

import (
	feature "github.com/vsekhar/webconfig/policies/feature"
	referrer "github.com/vsekhar/webconfig/policies/referrer"
)

Policies :: {
	Feature: feature.Policy
	Referrer: referrer.Policy
}

Default: Policies
