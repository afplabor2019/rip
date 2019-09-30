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

        

        
    }
}
