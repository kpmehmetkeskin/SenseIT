using AForge.Video;
using AForge.Video.DirectShow;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SmartIT
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            File.Delete("C://1.txt");
            axWindowsMediaPlayer1.URL = "C://1.mp4";
            axWindowsMediaPlayer1.Ctlcontrols.stop();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (File.Exists("C://1.txt") && axWindowsMediaPlayer1.playState != WMPLib.WMPPlayState.wmppsPlaying)
            {
                File.Delete("C://1.txt");
                axWindowsMediaPlayer1.Width = this.Width;
                axWindowsMediaPlayer1.Height = this.Height;
                axWindowsMediaPlayer1.Ctlcontrols.stop();
                axWindowsMediaPlayer1.Ctlcontrols.play();
            }
            else
            {
                File.Delete("C://1.txt");
            }

        }
    }
}

