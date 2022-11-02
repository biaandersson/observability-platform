<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">Observability Platform</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()
[![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://github.com/kylelobo/The-Documentation-Compendium/pulls)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

</div>

---

<p align="center"> An observability platform with Terraform, AWS, Prometheus, and Ansible.
    </br>
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Deployment](#deployment)
- [Usage](#usage)
- [Built Using](#built_using)
- [Authors](#authors)
- [Acknowledgments](#acknowledgement)

## 🧐 About <a name = "about"></a>

It's an Prometheus and Grafana Observability platform in AWS Cloud coded with Terraform!

Software used is Terraform, Ansible, Jenkins, Git, AWS Cloud, Prometheus, Grafana, and Terraform Cloud.

## 🏁 Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

What software you need to install, in order to completly run this observability platform.

[Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) -
Ansible is an open-source software provisioning, configuration management, and application-deployment tool enabling infrastructure as code.

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

- [AWSCloud](https://aws.amazon.com/) - Cloud
- [Terraform](https://www.terraform.io/) - Infrastructure as Code
- [Jenkins](https://www.jenkins.io/) - CI/CD
- [Ansible](https://www.ansible.com/) - Configuration Management

## ✍️ Authors <a name = "authors"></a>

- [@biaandersson](https://github.com/biaandersson) - Idea & Initial work

## 🎉 Acknowledgements <a name = "acknowledgement"></a>

- Inspiration
I've used this project as a learning project to learn even more about Terraform, AWS, and Ansible.
Since these are the tools I use at work, I wanted to learn more about them. Setting it up with Terraform Cloud was also a fun challenge.

- References
I've used the following references to create this project:
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
- [morethancertified](https://courses.morethancertified.com)
