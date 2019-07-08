#!/bin/bash -xe
#
# semaphorejs - Zero-knowledge signaling on Ethereum
# Copyright (C) 2019 Kobi Gurkan <kobigurk@gmail.com>
#
# This file is part of semaphorejs.
#
# semaphorejs is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# semaphorejs is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with semaphorejs.  If not, see <http://www.gnu.org/licenses/>.
#

if [ ! -f ../build/proving_key.bin ]; then
    export NODE_OPTIONS=--max-old-space-size=4096
    node ../node_modules/websnark/tools/buildpkey.js -i ../build/proving_key.json -o ../build/proving_key.bin
fi
