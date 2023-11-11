# Terraform AWS EC2 Instance

This GitHub repository provides a guide and Terraform scripts for creating a basic EC2 Instance in AWS.

## Prerequisites

### Step 1: Create an AWS Account

If you don't have an AWS account, you can create one by following the [AWS Account Creation Link](https://portal.aws.amazon.com/billing/signup#/start/email).

### Step 2: Install Terraform

#### For macOS:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

#### For Linux (Ubuntu):

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```

#### For Linux (RedHat):

```bash
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform
```

For more detailed installation instructions, refer to the [official Terraform installation guide](https://developer.hashicorp.com/terraform/install).

After successfully installing Terraform on your computer, run the `terraform` command in the terminal. You should receive an output similar to the following. Ensure that the Terraform binary is located in either the `/usr/bin` or `/usr/local/bin` directory, depending on your operating system.

To move the Terraform binary on a MacBook with an M1 chip, use the following command:

```bash
mv terraform /usr/local/bin
```

For Linux systems, use the command:

```bash
mv terraform /usr/bin
```

After executing the move command, running `terraform` again in the terminal should produce an output like the one shown below.

<img width="965" alt="image" src="https://github.com/FaizanCloudMaker/Ec2_Instance_using_Terraforms/assets/127054535/7e99c0d1-cc89-4c3f-ba21-89c96751f254">

<br><br>

With Terraform installed, the next step is to set up Visual Studio Code (VS Code) and install the Terraform extension. Follow these steps:

1. **Download Visual Studio Code:**
   Visit the following link to download Visual Studio Code:
   [https://code.visualstudio.com/download](https://code.visualstudio.com/download)

2. **Install Visual Studio Code:**
   Once the download is complete, follow the installation instructions for your operating system to install Visual Studio Code.

3. **Install Terraform Extension:**
   After installing VS Code, open it and navigate to the Extensions view. You can do this by clicking on the Extensions icon in the Activity Bar on the side of the window or by pressing `Ctrl+Shift+X`.

4. In the Extensions view, search for "Terraform" in the search bar.

5. Look for the official "Terraform" extension provided by HashiCorp and click the "Install" button.

   This extension provides syntax highlighting, linting, and other features that make working with Terraform files in Visual Studio Code more convenient.

Now, you have Visual Studio Code set up with the Terraform extension.
<br><br>


