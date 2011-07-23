using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Media.Imaging;

namespace ImageViewer
{
    public partial class MainPage : UserControl
    {
        public MainPage(string image)
        {
            InitializeComponent();

            BitmapImage img = new BitmapImage();

            img.UriSource = new Uri(image);

            //WhiteBorder.Width = img.PixelWidth + 20;
            //WhiteBorder.Height = img.PixelHeight + 20;

            this.DisplayImage.Source = img;
        }

        public string Image { get; set; }

    }
}
