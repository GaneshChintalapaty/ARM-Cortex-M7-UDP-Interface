using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using System.IO;

namespace UDPClientTest
{
    public partial class Form1 : Form
    {

        string ser = "10.0.0.9";
        Int32 port = 3000;


        public Form1()
        {
            InitializeComponent();
        }

        private void LED1Status_Click(object sender, EventArgs e)
        {
            if(LED1Status.Text =="LED1-ON")
            {
                LED1Status.Text = "LED1-OFF";
                LED1Status.BackColor = Color.Red;
                UDPSend("G0");
            }
            else
            {
                LED1Status.Text = "LED1-ON";
                LED1Status.BackColor= Color.Green;
                UDPSend("G1");
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            label6.Text = "Server Connected: " + ser;
            label7.Text = "Port: " + port;
        }

        public void UDPSend(String message)
        {
            try
            {
                UdpClient udpClient = new UdpClient();
                IPEndPoint ep = new IPEndPoint(IPAddress.Parse(ser), port);
                udpClient.Connect(ep);
                udpClient.Send(Encoding.ASCII.GetBytes(message), message.Length);
                udpClient.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void LED2Status_Click(object sender, EventArgs e)
        {
            if (LED2Status.Text == "LED2-ON")
            {
                LED2Status.Text = "LED2-OFF";
                LED2Status.BackColor = Color.Red;
                UDPSend("R0");
            }
            else
            {
                LED2Status.Text = "LED2-ON";
                LED2Status.BackColor = Color.Green;
                UDPSend("R1");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            UDPSend("M"+textBox1.Text);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            UDPSend("E" + textBox2.Text);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            UDPSend("S" + textBox3.Text);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            UDPSend("P" + textBox4.Text);
        }
    }
}
