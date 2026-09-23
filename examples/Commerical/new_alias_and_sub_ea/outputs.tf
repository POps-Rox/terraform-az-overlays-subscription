# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

output "subscription_id" {
  description = "The ID of the subscription created by this example."
  value       = module.mod_enrollment_subscription.enrollment_sub_id
}
