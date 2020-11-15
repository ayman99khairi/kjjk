using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace omar
{
    public partial class WebForm1 : System.Web.UI.Page
    {
    private Style primaryStyle = new Style();

        void Page_Load(object sender, System.EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                // Add data to the borderColorList, 
                // backColorList, and foreColorList controls.
                ListItemCollection colors = new ListItemCollection();
                colors.Add(Color.Black.Name);
                colors.Add(Color.Blue.Name);
                colors.Add(Color.Green.Name);
                colors.Add(Color.Orange.Name);
                colors.Add(Color.Purple.Name);
                colors.Add(Color.Red.Name);
                colors.Add(Color.White.Name);
                colors.Add(Color.Yellow.Name);
                backColorList.DataSource = colors;
                backColorList.DataBind();
                foreColorList.DataSource = colors;
                foreColorList.DataBind();
                //<Snippet4>              

                // Add data to the borderStyleList control.
                ListItemCollection styles = new ListItemCollection();
                Type styleType = typeof(BorderStyle);
                foreach (string s in Enum.GetNames(styleType))
                {
                    styles.Add(s);
                }
                //</Snippet4>           

                // Add data to the borderWidthList control.
                ListItemCollection widths = new ListItemCollection();
                for (int i = 0; i < 11; i++)
                {
                    widths.Add(i.ToString() + "px");
                }

                // Add data to the fontNameList control.

                // Add data to the fontSizeList control.
                ListItemCollection fontSizes = new ListItemCollection();
                fontSizes.Add("Small");
                fontSizes.Add("Medium");
                fontSizes.Add("Large");
                fontSizes.Add("10pt");
                fontSizes.Add("14pt");
                fontSizes.Add("20pt");
                fontSizeList.DataSource = fontSizes;
                fontSizeList.DataBind();

                //Set primaryStyle as the style for each control.
                Label1.ApplyStyle(primaryStyle);
                ListBox1.ApplyStyle(primaryStyle);
                Button1.ApplyStyle(primaryStyle);
                Table1.ApplyStyle(primaryStyle);
                TextBox1.ApplyStyle(primaryStyle);
            }
        }
        //<Snippet5>
        //</Snippet5>

        //<Snippet6>
        void ChangeBackColor(object sender, System.EventArgs e)
        {
            primaryStyle.BackColor =
                Color.FromName(backColorList.SelectedItem.Text);
            Label1.ApplyStyle(primaryStyle);
            ListBox1.ApplyStyle(primaryStyle);
            Button1.ApplyStyle(primaryStyle);
            Table1.ApplyStyle(primaryStyle);
            TextBox1.ApplyStyle(primaryStyle);
        }
        //</Snippet6>

        //<Snippet7>
        void ChangeForeColor(object sender, System.EventArgs e)
        {
            primaryStyle.ForeColor =
                Color.FromName(foreColorList.SelectedItem.Text);
            Label1.ApplyStyle(primaryStyle);
            ListBox1.ApplyStyle(primaryStyle);
            Button1.ApplyStyle(primaryStyle);
            Table1.ApplyStyle(primaryStyle);
            TextBox1.ApplyStyle(primaryStyle);
        }
        //</Snippet7>
    }
}