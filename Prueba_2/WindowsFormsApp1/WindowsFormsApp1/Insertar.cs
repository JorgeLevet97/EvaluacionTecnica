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
    public partial class Insertar : Form
    {
        public Insertar()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            string queryUsr = "insert into usuarios(Login,Nombre,Paterno,Materno) values('"+txtLogin.Text+"','"+txtNombre.Text+"','"+txtPaterno.Text+"','"+txtMaterno.Text+"')";
            string queryEmp = "insert into empleados(Sueldo,FechaIngreso) values('"+txtSueldo.Text +"','"+ DateTime.Now.ToString("yyyy-MM-dd") + "')";

            CConexion objetoConexion = new CConexion();
            MySqlConnection con = objetoConexion.estableceConexion();

            MySqlCommand SqlUsr = new MySqlCommand(queryUsr, con);
            MySqlCommand SqlEmp = new MySqlCommand(queryEmp, con);
            SqlUsr.CommandTimeout = 60;
            SqlEmp.CommandTimeout = 60;

            try
            {
                con.Open();
                MySqlDataReader readerUsr = SqlUsr.ExecuteReader();
                con.Close();

                con.Open();
                MySqlDataReader readerEmp = SqlEmp.ExecuteReader();
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
