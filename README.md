# zscheile

a Portage repository

## Configuration

To add this repository to gentoo, put a file with the following content into
`/etc/portage/repos.conf/zscheile.conf`:

```ini
[zscheile]
location = /var/db/repos/zscheile
sync-type = git
sync-uri = https://github.com/fogti/portage-zscheile.git
auto-sync = yes
```
