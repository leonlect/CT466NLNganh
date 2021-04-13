namespace QuanLyQuanCafe
{
    partial class fAdmin
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fAdmin));
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tcTable = new DevExpress.XtraTab.XtraTabControl();
            this.tpBill = new DevExpress.XtraTab.XtraTabPage();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dtgvBill = new DevComponents.DotNetBar.Controls.DataGridViewX();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnViewbill = new DevExpress.XtraEditors.SimpleButton();
            this.dtpkToDate = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dtpkFromDate = new DevComponents.Editors.DateTimeAdv.DateTimeInput();
            this.tpFood = new DevExpress.XtraTab.XtraTabPage();
            this.panel3 = new System.Windows.Forms.Panel();
            this.tpCategory = new DevExpress.XtraTab.XtraTabPage();
            this.tpTable = new DevExpress.XtraTab.XtraTabPage();
            this.tpAccount = new DevExpress.XtraTab.XtraTabPage();
            this.label3 = new System.Windows.Forms.Label();
            this.txtFoodID = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtFoodName = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cbCategory = new DevComponents.DotNetBar.Controls.ComboBoxEx();
            this.label6 = new System.Windows.Forms.Label();
            this.txtSearchFoodName = new System.Windows.Forms.TextBox();
            this.simpleButton1 = new DevExpress.XtraEditors.SimpleButton();
            this.nmFoodPrice = new System.Windows.Forms.NumericUpDown();
            this.btnAddFood = new DevExpress.XtraEditors.SimpleButton();
            this.btnEditFood = new DevExpress.XtraEditors.SimpleButton();
            this.btnDeleteFood = new DevExpress.XtraEditors.SimpleButton();
            this.btnShowFood = new DevExpress.XtraEditors.SimpleButton();
            this.dataGridViewX1 = new DevComponents.DotNetBar.Controls.DataGridViewX();
            ((System.ComponentModel.ISupportInitialize)(this.tcTable)).BeginInit();
            this.tcTable.SuspendLayout();
            this.tpBill.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtgvBill)).BeginInit();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtpkToDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpkFromDate)).BeginInit();
            this.tpFood.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmFoodPrice)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewX1)).BeginInit();
            this.SuspendLayout();
            // 
            // tcTable
            // 
            this.tcTable.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tcTable.Location = new System.Drawing.Point(12, 12);
            this.tcTable.Name = "tcTable";
            this.tcTable.SelectedTabPage = this.tpBill;
            this.tcTable.Size = new System.Drawing.Size(590, 496);
            this.tcTable.TabIndex = 0;
            this.tcTable.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tpBill,
            this.tpFood,
            this.tpCategory,
            this.tpTable,
            this.tpAccount});
            // 
            // tpBill
            // 
            this.tpBill.Controls.Add(this.panel2);
            this.tpBill.Controls.Add(this.panel1);
            this.tpBill.Name = "tpBill";
            this.tpBill.Size = new System.Drawing.Size(583, 468);
            this.tpBill.Text = "Doanh thu";
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel2.Controls.Add(this.dtgvBill);
            this.panel2.Location = new System.Drawing.Point(4, 75);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(576, 390);
            this.panel2.TabIndex = 1;
            // 
            // dtgvBill
            // 
            this.dtgvBill.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dtgvBill.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Tahoma", 8.25F);
            dataGridViewCellStyle1.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dtgvBill.DefaultCellStyle = dataGridViewCellStyle1;
            this.dtgvBill.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dtgvBill.Location = new System.Drawing.Point(4, 4);
            this.dtgvBill.Name = "dtgvBill";
            this.dtgvBill.Size = new System.Drawing.Size(569, 383);
            this.dtgvBill.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.Controls.Add(this.btnViewbill);
            this.panel1.Controls.Add(this.dtpkToDate);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.dtpkFromDate);
            this.panel1.Location = new System.Drawing.Point(4, 14);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(576, 55);
            this.panel1.TabIndex = 0;
            // 
            // btnViewbill
            // 
            this.btnViewbill.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnViewbill.Appearance.Options.UseFont = true;
            this.btnViewbill.Location = new System.Drawing.Point(472, 10);
            this.btnViewbill.Name = "btnViewbill";
            this.btnViewbill.Size = new System.Drawing.Size(111, 36);
            this.btnViewbill.TabIndex = 5;
            this.btnViewbill.Text = "Thống kê";
            // 
            // dtpkToDate
            // 
            // 
            // 
            // 
            this.dtpkToDate.BackgroundStyle.Class = "DateTimeInputBackground";
            this.dtpkToDate.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkToDate.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dtpkToDate.ButtonDropDown.Visible = true;
            this.dtpkToDate.IsPopupCalendarOpen = false;
            this.dtpkToDate.Location = new System.Drawing.Point(328, 16);
            // 
            // 
            // 
            this.dtpkToDate.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtpkToDate.MonthCalendar.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.dtpkToDate.MonthCalendar.BackgroundStyle.Class = "";
            this.dtpkToDate.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkToDate.MonthCalendar.ClearButtonVisible = true;
            // 
            // 
            // 
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BackColorGradientAngle = 90;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarDockedBorder;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.BorderTopWidth = 1;
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.Class = "";
            this.dtpkToDate.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkToDate.MonthCalendar.DisplayMonth = new System.DateTime(2021, 4, 1, 0, 0, 0, 0);
            this.dtpkToDate.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dtpkToDate.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtpkToDate.MonthCalendar.NavigationBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.dtpkToDate.MonthCalendar.NavigationBackgroundStyle.BackColorGradientAngle = 90;
            this.dtpkToDate.MonthCalendar.NavigationBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.dtpkToDate.MonthCalendar.NavigationBackgroundStyle.Class = "";
            this.dtpkToDate.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkToDate.MonthCalendar.TodayButtonVisible = true;
            this.dtpkToDate.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dtpkToDate.Name = "dtpkToDate";
            this.dtpkToDate.Size = new System.Drawing.Size(117, 21);
            this.dtpkToDate.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dtpkToDate.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(228, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 19);
            this.label2.TabIndex = 3;
            this.label2.Text = "Ngày kết thúc";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(3, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 19);
            this.label1.TabIndex = 1;
            this.label1.Text = "Ngày bắt đầu";
            // 
            // dtpkFromDate
            // 
            // 
            // 
            // 
            this.dtpkFromDate.BackgroundStyle.Class = "DateTimeInputBackground";
            this.dtpkFromDate.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkFromDate.ButtonDropDown.Shortcut = DevComponents.DotNetBar.eShortcut.AltDown;
            this.dtpkFromDate.ButtonDropDown.Visible = true;
            this.dtpkFromDate.IsPopupCalendarOpen = false;
            this.dtpkFromDate.Location = new System.Drawing.Point(100, 16);
            // 
            // 
            // 
            this.dtpkFromDate.MonthCalendar.AnnuallyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtpkFromDate.MonthCalendar.BackgroundStyle.BackColor = System.Drawing.SystemColors.Window;
            this.dtpkFromDate.MonthCalendar.BackgroundStyle.Class = "";
            this.dtpkFromDate.MonthCalendar.BackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkFromDate.MonthCalendar.ClearButtonVisible = true;
            // 
            // 
            // 
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground2;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BackColorGradientAngle = 90;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarBackground;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BorderTop = DevComponents.DotNetBar.eStyleBorderType.Solid;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BorderTopColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.BarDockedBorder;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.BorderTopWidth = 1;
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.Class = "";
            this.dtpkFromDate.MonthCalendar.CommandsBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkFromDate.MonthCalendar.DisplayMonth = new System.DateTime(2021, 4, 1, 0, 0, 0, 0);
            this.dtpkFromDate.MonthCalendar.MarkedDates = new System.DateTime[0];
            this.dtpkFromDate.MonthCalendar.MonthlyMarkedDates = new System.DateTime[0];
            // 
            // 
            // 
            this.dtpkFromDate.MonthCalendar.NavigationBackgroundStyle.BackColor2SchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground2;
            this.dtpkFromDate.MonthCalendar.NavigationBackgroundStyle.BackColorGradientAngle = 90;
            this.dtpkFromDate.MonthCalendar.NavigationBackgroundStyle.BackColorSchemePart = DevComponents.DotNetBar.eColorSchemePart.PanelBackground;
            this.dtpkFromDate.MonthCalendar.NavigationBackgroundStyle.Class = "";
            this.dtpkFromDate.MonthCalendar.NavigationBackgroundStyle.CornerType = DevComponents.DotNetBar.eCornerType.Square;
            this.dtpkFromDate.MonthCalendar.TodayButtonVisible = true;
            this.dtpkFromDate.MonthCalendar.WeeklyMarkedDays = new System.DayOfWeek[0];
            this.dtpkFromDate.Name = "dtpkFromDate";
            this.dtpkFromDate.Size = new System.Drawing.Size(117, 21);
            this.dtpkFromDate.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.dtpkFromDate.TabIndex = 0;
            // 
            // tpFood
            // 
            this.tpFood.Controls.Add(this.dataGridViewX1);
            this.tpFood.Controls.Add(this.panel3);
            this.tpFood.Controls.Add(this.simpleButton1);
            this.tpFood.Controls.Add(this.txtSearchFoodName);
            this.tpFood.Name = "tpFood";
            this.tpFood.Size = new System.Drawing.Size(583, 468);
            this.tpFood.Text = "Quản lý thức ăn";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.btnShowFood);
            this.panel3.Controls.Add(this.btnDeleteFood);
            this.panel3.Controls.Add(this.btnEditFood);
            this.panel3.Controls.Add(this.btnAddFood);
            this.panel3.Controls.Add(this.nmFoodPrice);
            this.panel3.Controls.Add(this.label6);
            this.panel3.Controls.Add(this.cbCategory);
            this.panel3.Controls.Add(this.label5);
            this.panel3.Controls.Add(this.txtFoodName);
            this.panel3.Controls.Add(this.label4);
            this.panel3.Controls.Add(this.txtFoodID);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(3, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(810, 151);
            this.panel3.TabIndex = 0;
            // 
            // tpCategory
            // 
            this.tpCategory.Name = "tpCategory";
            this.tpCategory.Size = new System.Drawing.Size(583, 468);
            this.tpCategory.Text = "Danh mụch thức ăn";
            // 
            // tpTable
            // 
            this.tpTable.Name = "tpTable";
            this.tpTable.Size = new System.Drawing.Size(583, 468);
            this.tpTable.Text = "Quản lý bàn";
            // 
            // tpAccount
            // 
            this.tpAccount.Name = "tpAccount";
            this.tpAccount.Size = new System.Drawing.Size(583, 468);
            this.tpAccount.Text = "Quản lý tài khoản";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(15, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 19);
            this.label3.TabIndex = 0;
            this.label3.Text = "Mã thức ăn:";
            // 
            // txtFoodID
            // 
            this.txtFoodID.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFoodID.Location = new System.Drawing.Point(117, 15);
            this.txtFoodID.Name = "txtFoodID";
            this.txtFoodID.ReadOnly = true;
            this.txtFoodID.Size = new System.Drawing.Size(146, 26);
            this.txtFoodID.TabIndex = 1;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(329, 17);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(84, 19);
            this.label4.TabIndex = 2;
            this.label4.Text = "Tên thức ăn:";
            // 
            // txtFoodName
            // 
            this.txtFoodName.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtFoodName.Location = new System.Drawing.Point(431, 15);
            this.txtFoodName.Name = "txtFoodName";
            this.txtFoodName.Size = new System.Drawing.Size(146, 26);
            this.txtFoodName.TabIndex = 3;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(14, 60);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(88, 19);
            this.label5.TabIndex = 4;
            this.label5.Text = "Loại thức ăn:";
            // 
            // cbCategory
            // 
            this.cbCategory.DisplayMember = "Text";
            this.cbCategory.DrawMode = System.Windows.Forms.DrawMode.OwnerDrawFixed;
            this.cbCategory.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cbCategory.FormattingEnabled = true;
            this.cbCategory.ItemHeight = 20;
            this.cbCategory.Location = new System.Drawing.Point(117, 60);
            this.cbCategory.Name = "cbCategory";
            this.cbCategory.Size = new System.Drawing.Size(146, 26);
            this.cbCategory.Style = DevComponents.DotNetBar.eDotNetBarStyle.StyleManagerControlled;
            this.cbCategory.TabIndex = 5;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(329, 67);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(33, 19);
            this.label6.TabIndex = 6;
            this.label6.Text = "Giá:";
            // 
            // txtSearchFoodName
            // 
            this.txtSearchFoodName.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSearchFoodName.Location = new System.Drawing.Point(8, 429);
            this.txtSearchFoodName.Name = "txtSearchFoodName";
            this.txtSearchFoodName.Size = new System.Drawing.Size(244, 26);
            this.txtSearchFoodName.TabIndex = 8;
            // 
            // simpleButton1
            // 
            this.simpleButton1.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.simpleButton1.Appearance.Options.UseFont = true;
            this.simpleButton1.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton1.ImageOptions.Image")));
            this.simpleButton1.Location = new System.Drawing.Point(258, 429);
            this.simpleButton1.Name = "simpleButton1";
            this.simpleButton1.Size = new System.Drawing.Size(93, 27);
            this.simpleButton1.TabIndex = 9;
            this.simpleButton1.Text = "Tìm kiếm";
            // 
            // nmFoodPrice
            // 
            this.nmFoodPrice.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nmFoodPrice.Location = new System.Drawing.Point(431, 60);
            this.nmFoodPrice.Name = "nmFoodPrice";
            this.nmFoodPrice.Size = new System.Drawing.Size(146, 26);
            this.nmFoodPrice.TabIndex = 10;
            // 
            // btnAddFood
            // 
            this.btnAddFood.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAddFood.Appearance.Options.UseFont = true;
            this.btnAddFood.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton2.ImageOptions.Image")));
            this.btnAddFood.Location = new System.Drawing.Point(143, 108);
            this.btnAddFood.Name = "btnAddFood";
            this.btnAddFood.Size = new System.Drawing.Size(93, 27);
            this.btnAddFood.TabIndex = 11;
            this.btnAddFood.Text = "Thêm";
            // 
            // btnEditFood
            // 
            this.btnEditFood.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEditFood.Appearance.Options.UseFont = true;
            this.btnEditFood.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton3.ImageOptions.Image")));
            this.btnEditFood.Location = new System.Drawing.Point(258, 108);
            this.btnEditFood.Name = "btnEditFood";
            this.btnEditFood.Size = new System.Drawing.Size(93, 27);
            this.btnEditFood.TabIndex = 12;
            this.btnEditFood.Text = "Sửa";
            // 
            // btnDeleteFood
            // 
            this.btnDeleteFood.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDeleteFood.Appearance.Options.UseFont = true;
            this.btnDeleteFood.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton4.ImageOptions.Image")));
            this.btnDeleteFood.Location = new System.Drawing.Point(374, 108);
            this.btnDeleteFood.Name = "btnDeleteFood";
            this.btnDeleteFood.Size = new System.Drawing.Size(93, 27);
            this.btnDeleteFood.TabIndex = 13;
            this.btnDeleteFood.Text = "Xóa";
            // 
            // btnShowFood
            // 
            this.btnShowFood.Appearance.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnShowFood.Appearance.Options.UseFont = true;
            this.btnShowFood.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("simpleButton5.ImageOptions.Image")));
            this.btnShowFood.Location = new System.Drawing.Point(484, 108);
            this.btnShowFood.Name = "btnShowFood";
            this.btnShowFood.Size = new System.Drawing.Size(93, 27);
            this.btnShowFood.TabIndex = 14;
            this.btnShowFood.Text = "Xem";
            // 
            // dataGridViewX1
            // 
            this.dataGridViewX1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Tahoma", 8.25F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.Black;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridViewX1.DefaultCellStyle = dataGridViewCellStyle2;
            this.dataGridViewX1.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(208)))), ((int)(((byte)(215)))), ((int)(((byte)(229)))));
            this.dataGridViewX1.Location = new System.Drawing.Point(8, 161);
            this.dataGridViewX1.Name = "dataGridViewX1";
            this.dataGridViewX1.Size = new System.Drawing.Size(572, 262);
            this.dataGridViewX1.TabIndex = 10;
            // 
            // fAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(614, 520);
            this.Controls.Add(this.tcTable);
            this.Name = "fAdmin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Phần mềm quản lý quán cafe - Admin control";
            ((System.ComponentModel.ISupportInitialize)(this.tcTable)).EndInit();
            this.tcTable.ResumeLayout(false);
            this.tpBill.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtgvBill)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtpkToDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtpkFromDate)).EndInit();
            this.tpFood.ResumeLayout(false);
            this.tpFood.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.nmFoodPrice)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewX1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraTab.XtraTabControl tcTable;
        private DevExpress.XtraTab.XtraTabPage tpBill;
        private DevExpress.XtraTab.XtraTabPage tpFood;
        private DevExpress.XtraTab.XtraTabPage tpCategory;
        private DevExpress.XtraTab.XtraTabPage tpTable;
        private DevExpress.XtraTab.XtraTabPage tpAccount;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel1;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dtpkFromDate;
        private DevExpress.XtraEditors.SimpleButton btnViewbill;
        private DevComponents.Editors.DateTimeAdv.DateTimeInput dtpkToDate;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private DevComponents.DotNetBar.Controls.DataGridViewX dtgvBill;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.TextBox txtFoodID;
        private System.Windows.Forms.Label label3;
        private DevComponents.DotNetBar.Controls.ComboBoxEx cbCategory;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtFoodName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label6;
        private DevExpress.XtraEditors.SimpleButton simpleButton1;
        private System.Windows.Forms.TextBox txtSearchFoodName;
        private DevExpress.XtraEditors.SimpleButton btnShowFood;
        private DevExpress.XtraEditors.SimpleButton btnDeleteFood;
        private DevExpress.XtraEditors.SimpleButton btnEditFood;
        private DevExpress.XtraEditors.SimpleButton btnAddFood;
        private System.Windows.Forms.NumericUpDown nmFoodPrice;
        private DevComponents.DotNetBar.Controls.DataGridViewX dataGridViewX1;
    }
}