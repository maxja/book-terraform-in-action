**Follow Up on**

# [Terraform in Action by Scott Winkler](https://www.goodreads.com/book/show/50542114-terraform-in-action?from_search=true&from_srp=true&qid=yYmNexMK5C&rank=1)

> _Disclaimer_
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

> Author suggests to use AWS as a playground.

> Terraform needed to be [installed](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli#install-terraform).

Plan for Hello Terraform:

1. Write Terraform configuration file.
2. Configure AWS provider.
3. Initialize Terraform with `terraform init`.
4. Deploy the [EC2](https://aws.amazon.com/ec2/)
   (Elastic Compute Cloud) instance with `terraform apply`.
5. Clean up with `terraform destroy`.

> All original book's code can be found on a [github](https://github.com/terraform-in-action/manning-code).

Terraform reads `.tf`'s config files as a guide to provisioning
infrastructure.

Author suggest to create `main.tf` configuration file, that can be found by
`p01/ch01/sub0102/main.tf` path of this repo. This configuration operates resources for Frankfurt region.

Defined resource prefixed with keyword `resource`, followed by the provider specific
resource type in a double quotes, and given resource name in the double quotes also.
Resources can be anything, that vendor suggested: virtual machines, load balancers,
gateways, and so forth.
Then, in the curly braces the configuration given.

`instance_type` specifies certain resource identifier provided by vendor.
Note, that not every resource identifier varies between different regions.

> Available regions for AWS could be found by this link https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html?icmpid=docs_iam_console#id_credentials_region-endpoints

> AWS EC2, region dependent, instance types could be found by this link https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#InstanceTypes:
>
> Change the value of `region=` query parameter to compare, or find proper one.

> For example, N. Virginia location offers smallest instance `t1.micro`, where
> Frankfurt only `t2.nano`.

> Pay attention to `Free-Tier eligible` if you intended to just play around.
>
> e.g.: `t2.micro` EC2 instance type.

`ami` specifies certain AWS image to be deployed on top of chosen instance.
It is id assigned by AWS an it needs to be chosen regarding requested instance
type's architecture, CPU and memory availability.

> AMI ID is a vendor/region specific value.

> Complete list of AMIs can be found by this link https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Images:visibility=public-images

`tags` user-defined identifiers in a Key=Value manner.

Each resources has inputs, or arguments, and outputs, called attributes. There
are also computes attributes, which only available after resource has been created.

Provider / region isolation should be defined in a `provider` section.

Providers do not have outputs.
