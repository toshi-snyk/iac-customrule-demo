package main

deny [msg] {

	resource := input.resource.aws_s3_bucket[name]
	not resource.tags.Team

	msg := {
		"id": "124",
		"publicId": "CUSTOM-123",
		"type": "custom",
		"subType": "S3",
		"severity": "critical",
		"policyEngineType": "opa"
		"issue": "There is no defined tag for the owning team",
		"impact": Deployment will be blocked until this is resolved."
		"resolve": "Set `aws_se_bucket.tags.Team`",
		"msg": sprintf("input.resource.aws_s3_bucket[%s].tags", [name]),
		"references": [],
	}
}
