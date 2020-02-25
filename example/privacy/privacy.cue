// Package prespun provides an example bundled configuration that, in this case,
// maximizes privacy. Developers can import this bundle directly as in
// examples/import.cue.
package privacy

import (
	"github.com/vsekhar/webconfig"
	fp "github.com/vsekhar/webconfig/policies/feature"
)

NoFeatures :: webconfig.Default & {
	Policies: Feature: {
		for k, v in fp.Policy {
			"\( k )": fp.None
		}
	}
}
