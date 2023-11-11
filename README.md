# Terraform AWS EC2 Instance

This GitHub repository provides a guide and Terraform scripts for creating a basic EC2 Instance in AWS.

## Prerequisites

### Create an AWS Account

If you don't have an AWS account, you can create one by following the [AWS Account Creation Link](https://portal.aws.amazon.com/billing/signup#/start/email).

### Install Terraform

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

After completing the installation, either download the code file or copy-paste its content into Visual Studio Code. Ensure that the file has a .tf extension.

Additionally, you'll need to obtain an access key and secret key from your AWS account to proceed with the Authentication and Autorization on AWS.

<br><br>
Certainly! To obtain the access key and secret key from your AWS account, follow these steps:

1. **Login to AWS Console:**
   Go to the [AWS Management Console](https://aws.amazon.com/) and log in to your AWS account.

2. **Navigate to IAM (Identity and Access Management):**
   In the AWS Management Console, find the "Services" dropdown in the top left corner. Under the "Security, Identity, & Compliance" section, click on "IAM" (Identity and Access Management).

3. **Access Users:**
   In the IAM dashboard, navigate to the "Users" section on the left sidebar.

4. **Select/Create User:**
   - If you already have a user with the necessary permissions, select that user.
   - If not, click on the "Add user" button to create a new user.

5. **Set User Details:**
   - Enter a username for the new user.

6. **Set Permissions:**
   - Attach policies to the user based on the permissions needed. For simplicity, you can attach the "Administrator" policy, but for production, it's recommended to grant only the necessary permissions.

7. **Review and Create User:**
   Review the user details and permissions, then click on the "Create user" button.

8. **Access Key Creation:**
   - After selecting or creating the user, go to the "Security credentials" tab in the user details.
   - Scroll down to the "Access keys" section.
   - Click on the "Create access key" button.

This will generate an access key ID and a secret access key for the user. Ensure to download or copy these credentials securely, as they are essential for accessing AWS services using Terraform.

   **Note:** Make sure to securely store these keys, as the secret access key is only displayed once during the creation process.

Now you have the access key and secret key needed for configuring your AWS credentials when working with Terraform or other AWS services and you can add those keys in the code for Authentication/Authorization purposes.

<br>
<h4>Apply an EC2 Instance:</h4>

Your instructions provide a clear and concise sequence for using Terraform to initialize, plan, and apply changes. Here's a revised version for clarity:

1. **Save Your Code:**
   After saving your Terraform code in the Visual Studio Code editor, make sure the file has a `.tf` extension.

2. **Open Terminal:**
   Open the terminal in Visual Studio Code.

3. **Initialize Terraform:**
   Run the following command to initialize Terraform, downloading the required configuration files:

   ```bash
   terraform init
   ```

4. **Plan Changes:**
   Use the following command to preview the changes Terraform will make to your AWS infrastructure:

   ```bash
   terraform plan
   ```
   <img width="1168" alt="image" src="https://github.com/FaizanCloudMaker/Ec2_Instance_using_Terraforms/assets/127054535/7d02e2c5-766b-4ae8-9485-9cc33db75e6e">


5. **Apply Changes:**
   If the plan looks satisfactory, apply the changes to your AWS environment:

   ```bash
   terraform apply -auto-approve
   ```
<img width="668" alt="image" src="https://github.com/FaizanCloudMaker/Ec2_Instance_using_Terraforms/assets/127054535/cd87b2c4-cd48-4d69-bd68-aeb39fcda2e9">


   The `-auto-approve` flag is optional but automates the confirmation step. Ensure you review the plan carefully before applying changes in a production environment.
