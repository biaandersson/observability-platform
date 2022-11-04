<p align="center">
  <a href="" rel="noopener">
 <img width=400px height=200px src="https://grafana.com/static/assets/meta/grafana-alerts-as-code-terraform-grafana-alerting.meta.png" alt="Project logo"></a>
</p>

<h3 align="center">Observability Platform</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> An observability platform with Terraform, AWS, Prometheus, and Ansible.</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

It's a Grafana Observability platform in AWS Cloud written in Terraform!

Software used is Terraform, Ansible, Jenkins, Git, AWS Cloud, Grafana, and Terraform Cloud.

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing
purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What software you need to install, in order to completly run this observability platform.

[Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) -
Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling
infrastructure as code.

[AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html) -
The AWS Command Line Interface (CLI) is a unified tool to manage your AWS services.

[Terraform CLI](https://www.terraform.io/downloads.html) -
Terraform is an open-source infrastructure as code software tool created by HashiCorp.

[Terraform Cloud](https://www.terraform.io/docs/cloud/index.html) -
Terraform Cloud is a SaaS offering from HashiCorp that provides a collaborative, web-based UI for Terraform.

## 🎈 Usage <a name="usage"></a>

After you have installed all the prerequisites.
You'll need to initialize Terraform Cloud workspace with Terraform CLI,
and also set up your AWS CLI credentials.

```bash
aws configure # Configure your AWS CLI
terraform login # Login to Terraform Cloud
```

## 🚀 Deployment <a name = "deployment"></a>

You can deploy this observability platform with the following commands:

```bash
terraform init # Initialize Terraform
terraform plan # Plan Terraform
terraform apply # Apply Terraform
```

## ⛏️ Built Using <a name = "built_using"></a>

- [Jenkins](https://www.jenkins.io/) - CI/CD
- [AWSCloud](https://aws.amazon.com/) - Cloud
- [Terraform](https://www.terraform.io/) - Infrastructure as Code
- [Ansible](https://www.ansible.com/) - Configuration Management

## ✍️ Authors <a name = "authors"></a>

- [@biaandersson](https://github.com/biaandersson) - Idea & Initial work
- [ComeOn Group!](https://comeon-group.com/) - Company

