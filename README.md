user Cookbook
=============

A simple cookbook to create a non-root user that can be user in other cookbooks. If the user
already exists (based on ohai information read from /etc/passwd) it does nothing. So if you
created a user with a password during OS installation it won't be overriden.

Default user password is "a".

Attributes
----------

The only attribute is user, see metadata.rb for more information

Usage
-----
#### user::default

e.g.
Just include `user` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[user]"
  ]
}
```
