#!/usr/bin/env bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

set -e

kdb5_util create -s -P Welcome1

kadmin.local -q "addprinc -randkey admin/admin@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey scm/scm@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/scm@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey testuser/scm@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey testuser2/scm@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey recon/recon@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/recon@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey s3g/s3g@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/s3g@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey testuser/s3g@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey om/om@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/om@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey testuser/om@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey dn/dn@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/dn@EXAMPLE.COM"

#for KMS
kadmin.local -q "addprinc -randkey HTTP/kms@EXAMPLE.COM"

#for Mapreduce tests (Yarn):
kadmin.local -q "addprinc -randkey jhs/jhs@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/jhs@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey rm/rm@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/rm@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey nm/nm@EXAMPLE.COM"
kadmin.local -q "addprinc -randkey HTTP/nm@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey hadoop/rm@EXAMPLE.COM"

kadmin.local -q "addprinc -randkey HTTP/ozone@EXAMPLE.COM"
