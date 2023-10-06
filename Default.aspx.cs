using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"server=EMERSON\SQLEXPRESS;user=inf324;pwd=123456;database=MIBD_ibanez";
        //  con.Open();
        // con.Close();

        SqlDataAdapter ada = new SqlDataAdapter();
        ada.SelectCommand = new SqlCommand();
        ada.SelectCommand.Connection = con;
        ada.SelectCommand.CommandText = "select inscripcion.materia, inscripcion. sigla, inscripcion.horario,  inscripcion.carrera, estudiante.nombre from inscripcion INNER JOIN estudiante ON estudiante_id_est= id_est";
        ada.SelectCommand.CommandType = CommandType.Text;

        //creamos la pila deonde se guardara
        DataSet ds = new DataSet();
        ada.Fill(ds);
        //GridView1.DataSource = ds;
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        }
        }
    
