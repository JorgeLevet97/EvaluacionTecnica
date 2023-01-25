using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    class CConexion
    {
        MySqlConnection conex = new MySqlConnection();

        static string server = "localhost";
        static string bd = "empresa";
        static string user = "root";
        static string pass = "12345678";
        static string port = "3306";

        string cadenaConexion = "server=" + server + ";" + "port=" + port + ";" + "user id=" + user + ";" + "password=" + pass + ";" + "database=" + bd + ";";

        public MySqlConnection estableceConexion()
        {
            try
            {
                conex.ConnectionString = cadenaConexion;
            }

            catch (MySqlException e)
            {
                MessageBox.Show("Error al conectar con la BD: " + e.ToString());
            }

            return conex;
        }

    }
}
