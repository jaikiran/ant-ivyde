#!/bin/bash

#   Licensed to the Apache Software Foundation (ASF) under one
#   or more contributor license agreements.  See the NOTICE file
#   distributed with this work for additional information
#   regarding copyright ownership.  The ASF licenses this file
#   to you under the Apache License, Version 2.0 (the
#   "License"); you may not use this file except in compliance
#   with the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing,
#   software distributed under the License is distributed on an
#   "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#   KIND, either express or implied.  See the License for the
#   specific language governing permissions and limitations
#   under the License.

read -s -p "Key passphrase: " passphrase

for i in dist/updatesite/features/org.apache.ivy*.jar; do gpg --passphrase "$passphrase" --output $i.asc --detach-sig --armor $i; done
for i in dist/updatesite/plugins/org.apache.ivy*.jar;  do gpg --passphrase "$passphrase" --output $i.asc --detach-sig --armor $i; done
for i in dist/updatesite/plugins/org.apache.ivy*.jar.pack.gz;  do gpg --passphrase "$passphrase" --output $i.asc --detach-sig --armor $i; done
for i in dist/apache-ivyde-sources-*.zip; do gpg --passphrase "$passphrase" --output $i.asc --detach-sig --armor $i; done
for i in dist/org.apache.ivyde.feature-*.zip; do gpg --passphrase "$passphrase" --output $i.asc --detach-sig --armor $i; done
