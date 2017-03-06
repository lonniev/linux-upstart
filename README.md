# linux-upstart Cookbook

Simply reverts the Systems Services Manager on a Ubuntu server back to Upstart.

## Requirements

### Platforms

- Ubuntu 64-bit (amd64)

### Chef

- Chef 12.10

### Cookbooks

## Attributes

## Usage

Just include `linux-upstart` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[linux-upstart]"
  ]
}
```

Within a Vagrant provisioning session, use the `vagrant reload` provisioner to force a clean reload after provisioning this linux-upstart recipe.

# License and Authors

Authors: Lonnie VanZandt
