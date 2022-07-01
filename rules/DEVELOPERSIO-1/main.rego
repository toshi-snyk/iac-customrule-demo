package rules

deny[msg] {
	resource := input.resource.test[name]
	resource.todo
	msg := {
		# Mandatory fields
		"publicId": "DEVELOPERSIO-1",
		"title": "`Team` tag not defined for S3 bucket",
		"severity": "high",
		"msg": sprintf("input.resource.aws_s3_bucket[%s].tags", [name]), # must be the JSON path to the resource field that triggered the deny rule
		# Optional fields
		"issue": "There is no defined tag specifying the owning team",
		"impact": "Deployment will be blocked until this is resolved.",
		"remediation": ""Set `aws_s3_bucket.tags.Team`,
		"references": [],
	}
}
