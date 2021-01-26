using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Text;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GreetingCardMaker1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string[] colorArray = Enum.GetNames(typeof(KnownColor));
            lstBackColor.DataSource = colorArray;
            lstBackColor.DataBind();

            InstalledFontCollection fonts = new InstalledFontCollection();
            foreach (FontFamily family in fonts.Families) { 
                lstFontName.Items.Add(family.Name); }

            ListItem item = new ListItem();
            item.Text = BorderStyle.None.ToString();
            item.Value = ((int)BorderStyle.None).ToString();
            lstBorder.Items.Add(item);

            item = new ListItem();
            item.Text = BorderStyle.Double.ToString();
            item.Value = ((int)BorderStyle.Double).ToString();
            lstBorder.Items.Add(item);

            item = new ListItem();
            item.Text = BorderStyle.Solid.ToString();
            item.Value = ((int)BorderStyle.Solid).ToString();
            lstBorder.Items.Add(item);

            lstBorder.SelectedIndex = 0;

            imgDefault.ImageUrl = "images/cake.jpg";
            imgDefault.Visible = false;
        }
        
    }

    protected void cmdUpdate_Click(object sender, EventArgs e)
    {
        UpdateCard();
    }

    protected void ControlChanged(object sender, System.EventArgs e)
    {
        UpdateCard();
    }

    private void UpdateCard()
    {
        pnlCard.BackColor = Color.FromName(lstBackColor.SelectedItem.Text);
        lblGreeting.Font.Name = lstFontName.SelectedItem.Text;
        TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));

        //Added a try and catch block. App was breaking due to no default value entered into the font size
        try
        {
            if (Int32.Parse(txtFontSize.Text) > 0)
            {
                lblGreeting.Font.Size = FontUnit.Point(Int32.Parse(txtFontSize.Text));
            }
        }
        catch(Exception e)
        {
            txtFontSize.Text = "Please enter a font size";
        }

        int borderValue = Int32.Parse(lstBorder.SelectedItem.Value);
        pnlCard.BorderStyle = (BorderStyle)converter.ConvertFromString(lstBorder.SelectedItem.Text);

        if (chkPicture.Checked)
        {
            imgDefault.Visible = true;
        }
        else
        {
            imgDefault.Visible = false;
        }

        lblGreeting.Text = txtGreeting.Text;
    }
}