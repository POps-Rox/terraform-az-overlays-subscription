# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

output "subscription_id" {
  description = "The ID of the subscription created by this example."
  value       = module.mod_mca_subscription.mca_sub_id
}
