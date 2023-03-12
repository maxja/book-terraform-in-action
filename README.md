**Follow Up on**

# [Terraform in Action by Scott Winkler](https://www.goodreads.com/book/show/50542114-terraform-in-action?from_search=true&from_srp=true&qid=yYmNexMK5C&rank=1)

> Disclaimer
>
> All rights belongs to author (Scott Winkler) and publisher (Manning Publications Co.).

## Part 1 Terraform bootcamp

### Chapter 1 Getting started with Terraform

[Terraform](https://www.terraform.io/) is a provisioning and management tool for
infrastructure layer based on IaC, or [infrastructure as a code](https://en.wikipedia.org/wiki/Infrastructure_as_code).

Not Cloud in particular but almost any provider that allowed resource control over
API, or [application programming interface](https://en.wikipedia.org/wiki/API).

Terraform is not a _configuration management_ tool as [Ansible](https://www.ansible.com/)
or [SaltStack](https://saltproject.io/) ans as such.

Basic principle of Terraform is to operate infrastructure in immutable way, via
configuration defined using human readable syntax, and allowed to make
those configurations repeatable, consistent, vendor independent.

Terraform not operate as a deployment solution, it allocates and defines
infrastructure via vendor delivered resources.

Terraform configurations written in a domain-specific configuration language — HCL,
or [HashiCorp configuration language](https://github.com/hashicorp/hcl/blob/main/hclsyntax/spec.md).

Configurations written in HCL can be converted 1:1 to JSON, YAML, TOML and
similar formats.

The engine of Terraform called Terraform core and it's free, open-source software
offered under [Mozilla Public License v2.0](https://www.mozilla.org/en-US/MPL/2.0/).

> Another example of HCL usage, — configuration files for [vagrant](https://www.vagrantup.com/).

HCL is a declarative, so that configurations express desired result and not
gave exact instruction how to achieve it.

Terraform is cloud-agnostic, means that it uses the same approach to run on any
desired vendor, despite their API peculiarities.

The only limitation is to have right _Terraform provider_ (plugin) for desired vendor, which can be found in [Terraform registry](https://registry.terraform.io/browse/providers).
Those providers are written in [Go](https://go.dev/) language and distributed in
a binary form.

Providers take care of authentication, making API requests and handle errors.
