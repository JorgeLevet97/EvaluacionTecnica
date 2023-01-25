using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Modificar : Form
    {
        public Modificar()
        {
            InitializeComponent();
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            string query = "update empleados set sueldo = '"+txtSueldo.Text+"' where userId = "+txtId.Text+";";

            CConexion objetoConexion = new CConexion();
            MySqlConnection con = objetoConexion.estableceConexion();

            MySqlCommand Sql = new MySqlCommand(query, con);
            Sql.CommandTimeout = 60;

            try
            {
                con.Open();
                MySqlDataReader readerUsr = Sql.ExecuteReader();
                con.Close();

            }
            catch (MySqlException error)
            {
                MessageBox.Show("Ocurrio el siguiente error: " + error.ToString());
            }

            this.Close();
        }
    }
}
