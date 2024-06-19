#!/bin/sh
mkisofs -output cidata.iso -volid cidata -joliet -rock img/meta-data img/user-data img/vendor-data
