# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM alpine:3.13.2
# hadolint ignore=DL3018
RUN apk add --no-cache bash ca-certificates openssl krb5-server krb5 wget && update-ca-certificates && \
   wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64 && \
   chmod +x /usr/local/bin/dumb-init
WORKDIR /opt
COPY krb5.conf /etc/
COPY kadm5.acl /var/lib/krb5kdc/kadm5.acl
RUN kdb5_util create -s -P Welcome1 && kadmin.local -q "addprinc -randkey admin/admin@EXAMPLE.COM"
ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]
