namespace QuanLyQuanCafe
{
    partial class fListFood
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fListFood));
            this.dtgvFood = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.name = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CategoryID = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.price = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnSearchFood = new DevExpress.XtraEditors.SimpleButton();
            this.txtSearchFoodName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvFood)).BeginInit();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // dtgvFood
            // 
            this.dtgvFood.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtgvFood.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.id,
            this.name,
            this.CategoryID,
            this.price});
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Tahoma", 8.25F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgvFood.DefaultCellStyle = dataGridViewCellStyle2;
            this.dtgvFood.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dtgvFood.Location = new System.Drawing.Point(10, 108);
            this.dtgvFood.Name = "dtgvFood";
            this.dtgvFood.Size = new System.Drawing.Size(583, 379);
            this.dtgvFood.TabIndex = 12;
            // 
            // id
            // 
            this.id.DataPropertyName = "id";
            this.id.FillWeight = 50.76143F;
            this.id.HeaderText = "Mã món";
            this.id.Name = "id";
            this.id.Visible = false;
            this.id.Width = 68;
            // 
            // name
            // 
            this.name.DataPropertyName = "name";
            this.name.FillWeight = 24.77591F;
            this.name.HeaderText = "Tên món";
            this.name.Name = "name";
            this.name.Width = 437;
            // 
            // CategoryID
            // 
            this.CategoryID.DataPropertyName = "CategoryID";
            this.CategoryID.FillWeight = 116.4129F;
            this.CategoryID.HeaderText = "Danh mục";
            this.CategoryID.Name = "CategoryID";
            this.CategoryID.Visible = false;
            this.CategoryID.Width = 179;
            // 
            // price
            // 
            this.price.DataPropertyName = "price";
            dataGridViewCellStyle1.Format = "N0";
            dataGridViewCellStyle1.NullValue = null;
            this.price.DefaultCellStyle = dataGridViewCellStyle1;
            this.price.FillWeight = 208.0498F;
            this.price.HeaderText = "Giá";
            this.price.Name = "price";
            this.price.Width = 98;
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnSearchFood);
            this.panel3.Controls.Add(this.txtSearchFoodName);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Location = new System.Drawing.Point(10, 12);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(583, 81);
            this.panel3.TabIndex = 11;
            // 
            // btnSearchFood
            // 
            this.btnSearchFood.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSearchFood.Appearance.Options.UseFont = true;
            this.btnSearchFood.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnSearchFood.ImageOptions.Image")));
            this.btnSearchFood.Location = new System.Drawing.Point(262, 24);
            this.btnSearchFood.Name = "btnSearchFood";
            this.btnSearchFood.Size = new System.Drawing.Size(93, 27);
            this.btnSearchFood.TabIndex = 14;
            this.btnSearchFood.Text = "Tìm kiếm";
            this.btnSearchFood.Click += new System.EventHandler(this.btnSearchFood_Click);
            // 
            // txtSearchFoodName
            // 
            this.txtSearchFoodName.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearchFoodName.Location = new System.Drawing.Point(97, 24);
            this.txtSearchFoodName.Name = "txtSearchFoodName";
            this.txtSearchFoodName.Size = new System.Drawing.Size(146, 26);
            this.txtSearchFoodName.TabIndex = 3;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(10, 27);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 19);
            this.label4.TabIndex = 2;
            this.label4.Text = "Tên món:";
            // 
            // fListFood
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(604, 499);
            this.Controls.Add(this.dtgvFood);
            this.Controls.Add(this.panel3);
            this.Name = "fListFood";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Danh sách thức ăn";
            ((System.ComponentModel.ISupportInitialize)(this.dtgvFood)).EndInit();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevComponents.DotNetBar.Controls.DataGridViewX dtgvFood;
        private System.Windows.Forms.Panel panel3;
        private DevExpress.XtraEditors.SimpleButton btnSearchFood;
        private System.Windows.Forms.TextBox txtSearchFoodName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridViewTextBoxColumn id;
        private System.Windows.Forms.DataGridViewTextBoxColumn name;
        private System.Windows.Forms.DataGridViewTextBoxColumn CategoryID;
        private System.Windows.Forms.DataGridViewTextBoxColumn price;
    }
}