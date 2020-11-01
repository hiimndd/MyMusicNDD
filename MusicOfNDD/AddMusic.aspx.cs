using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicOfNDD
{
    public partial class AddMusic : System.Web.UI.Page
    {
        SqlConnection connec = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void conection(string sql)
        {
            DataSet data = new DataSet();

            try
            {
                if (connec.State != ConnectionState.Open)
                {
                    connec.Open();
                }
                SqlDataAdapter adapter = new SqlDataAdapter(sql, connec);
                adapter.Fill(data);
                connec.Close();
            }
            catch
            {
                Response.Write("dữ liệu không trùng khớp!");
            }

        }
        public void UploadSound()
        {

            byte[] sound;
            Stream stream = FileUploadSound.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(stream);
            sound = br.ReadBytes((Int32)stream.Length);

            if (txtsongname.Text.Trim() == "")
            {
                LabelErorr.Text = "You need write Song of the name!";
            }
            else
            {

                if (FileUploadSound.HasFile == false)
                {
                    LabelErorr.Text = "You need insert file!";
                }
                else
                {


                    SqlCommand cmd1 = new SqlCommand("select max(MaBH) from SongList");
                    connec.Open();
                    cmd1.Connection = connec;
                    int mabh = (int)cmd1.ExecuteScalar() + 1;
                    connec.Close();
                    SqlConnection con = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                    SqlCommand com = new SqlCommand("insert into SongList values('" + mabh + "',@data,N'" + txtsongname.Text + "',N'" + txtsinger.Text + "')");
                    com.Connection = con;
                    com.Parameters.AddWithValue("@data", sound);
                    con.Open();
                    int result = com.ExecuteNonQuery();
                    if (result > 0)
                    {
                        LabelErorr.Text = "successful!";

                    }
                    else
                    {
                        LabelErorr.Text = "failed";

                    }
                    con.Close();

                }
            }


        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            UploadSound();
        }
    }
}