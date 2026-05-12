# Changelog

## [2.0.0] - 2026-05-11

### Changed (BREAKING)

- Upgraded `hashicorp/azurerm` provider constraint from `~> 3.116` to `~> 4.20`.
- Raised minimum Terraform CLI version from `>= 1.9` to `>= 1.10`.

### Added

- New `azure/azapi ~> 2.0` provider declaration in `versions.tf` (root + all
  eight example stacks) for fleet alignment.
- Example `versions.tf` files now declare full `terraform` blocks with
  `required_version` and `required_providers` (previously had only bare
  `provider "azurerm"` blocks).
- Comment in the example `provider "azurerm"` blocks noting that
  `subscription_id` is provided by the consumer via the `ARM_SUBSCRIPTION_ID`
  environment variable (required by azurerm 4.x).

### Notes

- Module manages only `azurerm_subscription` resources (alias, MPA, MCA, EA);
  no mechanical attribute renames (`enable_*`, `allow_blob_public_access`,
  retention_policy, subnet endpoint policies, role assignments,
  `skip_provider_registration`) were required.
- CI may show transitive provider-constraint failures on example stacks until
  upstream POps-Rox overlays are also bumped to `~> 4.20`. Failures resolve as
  Phase 1 PRs land.

# v1.0.0 - 02/06/2024

Added
- Init Source
