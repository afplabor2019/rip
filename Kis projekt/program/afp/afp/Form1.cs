using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace afp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6_Enter(object sender, EventArgs e)
        {
            if (textBox6.Text == "Keresés")
            {
                textBox6.Text = "";
                textBox6.ForeColor = Color.Black;
            }

        }

        private void textBox6_Leave(object sender, EventArgs e)
        {
            if (textBox6.Text=="")
            {
                
                textBox6.Text = "Keresés";
                textBox6.ForeColor = Color.Black;
            }
        }

        private void Chatbox_TextChanged(object sender, EventArgs e)
        {

        }

        

        private void Chatbox_Enter(object sender, EventArgs e)
        {
            if (Chatbox.Text == "Chatbox")
            {
                Chatbox.Text = "";
                Chatbox.ForeColor = Color.Black;
            }

        }
        private void Chatbox_Leave(object sender, EventArgs e)
        {
            if (Chatbox.Text == "")
            {

                Chatbox.Text = "Chatbox";
                Chatbox.ForeColor = Color.Black;
            }
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("colBestBefore", typeof(DateTime)));
            dt.Columns.Add(new DataColumn("colStatus", typeof(string)));

            dt.Columns["colStatus"].Expression = String.Format("IIF(colBestBefore < #{0}#, 'Ok','Not ok')", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

            dt.Rows.Add(DateTime.Now.AddDays(-1));
            dt.Rows.Add(DateTime.Now.AddDays(1));
            dt.Rows.Add(DateTime.Now.AddDays(2));
            dt.Rows.Add(DateTime.Now.AddDays(-2));

            dataGridView1.DataSource = dt;
        }

        
    }
}
