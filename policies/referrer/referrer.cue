// Package referrer implements Referrer-Policy as defined in:
// https://www.w3.org/TR/referrer-policy/.
package referrer

import (
	"strings"
	"github.com/vsekhar/webconfig/policies/enforcement"
)

nondefaulthttpnames :: [
	"no-referrer",
	"same-origin",
	"origin",
	"strict-origin",
	"origin-when-cross-origin",
	"strict-origin-when-cross-origin",
	"unsafe-url",
]

Value :: {
	HTTPName: *"no-referrer-when-downgrade" | string
}

// Declare as package constants for easier use.
for k, v in nondefaulthttpnames {
	"\( strings.Replace(strings.ToTitle(strings.Replace(v, "-", " ", -1)), " ", "", -1))" :: Value & {
		HTTPName: v
	}
}

V=Value
Policy :: {
	Value: V
	Enforcement: enforcement.Policy
}
