namespace EmailService
{
    partial class ProjectInstaller
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.emailServiceProcessInstaller = new System.ServiceProcess.ServiceProcessInstaller();
            this.emailServiceInstaller = new System.ServiceProcess.ServiceInstaller();
            // 
            // emailServiceProcessInstaller
            // 
            this.emailServiceProcessInstaller.Account = System.ServiceProcess.ServiceAccount.LocalSystem;
            this.emailServiceProcessInstaller.Password = null;
            this.emailServiceProcessInstaller.Username = null;
            // 
            // emailServiceInstaller
            // 
            this.emailServiceInstaller.ServiceName = "SimplicityEmailService";
            this.emailServiceInstaller.StartType = System.ServiceProcess.ServiceStartMode.Automatic;
            // 
            // ProjectInstaller
            // 
            this.Installers.AddRange(new System.Configuration.Install.Installer[] {
            this.emailServiceProcessInstaller,
            this.emailServiceInstaller});

        }

        #endregion

        private System.ServiceProcess.ServiceProcessInstaller emailServiceProcessInstaller;
        private System.ServiceProcess.ServiceInstaller emailServiceInstaller;
    }
}