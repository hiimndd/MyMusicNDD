using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MusicOfNDD
{
    /// <summary>
    /// Summary description for SoundHandler
    /// </summary>
    public class SoundHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request.QueryString["Id"].ToString();
            byte[] sound = null;

            SqlConnection con = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            SqlCommand com = new SqlCommand("select MaBH,Audio from SongList where MaBH=@id");
            com.Connection = con;
            com.Parameters.AddWithValue("@id", id);

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            sound = (byte[])dt.Rows[0][1];
            con.Close();

            context.Response.Clear();
            context.Response.Buffer = true;
            context.Response.ContentType = "audio/mpeg3";
            context.Response.BinaryWrite(sound);
            context.Response.End();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}