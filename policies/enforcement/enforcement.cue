// Package enforcement provides values for specifying enforcement methods
// for policies. It is separated from package policies to avoid circular
// dependencies.
package enforcement

Policy :: {
	Type: *"no-action" | string
	...
}

// for readability
NoAction :: Policy & {
	Type: "no-action"
}

ReportOnly :: Policy & {
	Type: "report-only"
	URL: string
}
