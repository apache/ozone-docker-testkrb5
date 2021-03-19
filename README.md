# Containerized MIT Kerberos server for Ozone dev environments

This repository contains the definition of a containerized MIT Kerberos server.

It's used for development and testing Apache Ozone and **not secured for production use**.

Keytabs required by secure Ozone smoketests are pre-generated which makes possible to export them and store together with the containerized test environments. It makes the tests faster as the keytabs are already exported for each tests.

