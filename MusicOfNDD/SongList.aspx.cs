using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MusicOfNDD
{
    public partial class SongList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillGridView();
            }

        }
        public void FillGridView()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
                SqlCommand com = new SqlCommand("select * from SongList");
                com.Connection = con;

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                lbErrors.Text = ex.Message;
                lbSecess.Text = "";
            }
        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            FillGridView();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
                {
                    con.Open();
                    string sql = "delete from SongList where MaBH = @mabh";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@mabh", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    FillGridView();
                    lbSecess.Text = "Delate Sececss!";
                    lbErrors.Text = "";

                }
            }
            catch (Exception ex)
            {
                lbSecess.Text = "";
                lbErrors.Text = "Error!!!";

            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            FillGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {



                using (SqlConnection con = new SqlConnection(@"Server=tcp:mymusicndd.database.windows.net,1433;Initial Catalog=MyMusic;Persist Security Info=False;User ID=hiimndd;Password=Uadmlt123;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"))
                {
                    con.Open();
                    string sql = "update SongList set TenBH=@tenbh,TenCS=@tencs where MaBH = @mabh";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    cmd.Parameters.AddWithValue("@tenbh", (GridView1.Rows[e.RowIndex].FindControl("txtTenBH") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@tencs", (GridView1.Rows[e.RowIndex].FindControl("txtTenCS") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@mabh", Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()));
                    cmd.ExecuteNonQuery();
                    GridView1.EditIndex = -1;
                    FillGridView();
                    lbSecess.Text = "Edit Sececss!";
                    lbErrors.Text = "";

                }
            }
            catch (Exception ex)
            {
                lbSecess.Text = "";
                lbErrors.Text = "Error!!!";

            }

        }
    }
}