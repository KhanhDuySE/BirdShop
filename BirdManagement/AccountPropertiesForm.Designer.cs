namespace BirdManagement
{
    partial class AccountPropertiesForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label2 = new Label();
            textBox4 = new TextBox();
            label8 = new Label();
            label1 = new Label();
            comboBox1 = new ComboBox();
            comboBox2 = new ComboBox();
            button3 = new Button();
            button1 = new Button();
            SuspendLayout();
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.ForeColor = Color.Black;
            label2.Location = new Point(24, 97);
            label2.Name = "label2";
            label2.Size = new Size(58, 21);
            label2.TabIndex = 69;
            label2.Text = "Role :";
            // 
            // textBox4
            // 
            textBox4.Location = new Point(152, 22);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(493, 30);
            textBox4.TabIndex = 68;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.ForeColor = Color.Black;
            label8.Location = new Point(24, 31);
            label8.Name = "label8";
            label8.Size = new Size(98, 21);
            label8.TabIndex = 67;
            label8.Text = "Fullname :";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.ForeColor = Color.Black;
            label1.Location = new Point(24, 164);
            label1.Name = "label1";
            label1.Size = new Size(99, 21);
            label1.TabIndex = 71;
            label1.Text = "Activate :";
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(152, 89);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(493, 29);
            comboBox1.TabIndex = 72;
            // 
            // comboBox2
            // 
            comboBox2.FormattingEnabled = true;
            comboBox2.Location = new Point(152, 156);
            comboBox2.Name = "comboBox2";
            comboBox2.Size = new Size(493, 29);
            comboBox2.TabIndex = 73;
            // 
            // button3
            // 
            button3.BackColor = Color.FromArgb(0, 70, 160);
            button3.FlatAppearance.BorderSize = 0;
            button3.FlatStyle = FlatStyle.Flat;
            button3.ForeColor = Color.White;
            button3.Location = new Point(406, 211);
            button3.Name = "button3";
            button3.Size = new Size(99, 45);
            button3.TabIndex = 74;
            button3.Text = "Apply";
            button3.UseVisualStyleBackColor = false;
            // 
            // button1
            // 
            button1.BackColor = Color.LightGray;
            button1.FlatAppearance.BorderSize = 0;
            button1.FlatStyle = FlatStyle.Flat;
            button1.ForeColor = Color.Black;
            button1.Location = new Point(546, 211);
            button1.Name = "button1";
            button1.Size = new Size(99, 45);
            button1.TabIndex = 75;
            button1.Text = "Cancel";
            button1.UseVisualStyleBackColor = false;
            // 
            // AccountPropertiesForm
            // 
            AutoScaleDimensions = new SizeF(11F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(682, 279);
            Controls.Add(button1);
            Controls.Add(button3);
            Controls.Add(comboBox2);
            Controls.Add(comboBox1);
            Controls.Add(label1);
            Controls.Add(label2);
            Controls.Add(textBox4);
            Controls.Add(label8);
            Font = new Font("Century Gothic", 10.8F, FontStyle.Regular, GraphicsUnit.Point);
            Margin = new Padding(4, 3, 4, 3);
            Name = "AccountPropertiesForm";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Account Properties";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Label label2;
        private TextBox textBox4;
        private Label label8;
        private Label label1;
        private ComboBox comboBox1;
        private ComboBox comboBox2;
        private Button button3;
        private Button button1;
    }
}