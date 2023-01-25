using CsvHelper;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
            dgvDatos.Columns.Add("id", "ID");
            dgvDatos.Columns.Add("login", "LOGIN");
            dgvDatos.Columns.Add("nombre", "NOPMBRE");
            dgvDatos.Columns.Add("paterno", "PATERNO");
            dgvDatos.Columns.Add("materno", "MATERNO");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string query = "select * from usuarios limit 10";

            CConexion objetoConexion = new CConexion();
            MySqlConnection con = objetoConexion.estableceConexion();

            MySqlCommand Sql = new MySqlCommand(query,con);
            Sql.CommandTimeout = 60;

            try
            {
                con.Open();
                MySqlDataReader reader = Sql.ExecuteReader();

                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        dgvDatos.Rows.Add ( reader.GetInt32(0).ToString(),
                                            reader.GetString(1).ToString(),
                                            reader.GetString(2).ToString(),
                                            reader.GetString(3).ToString(),
                                            reader.GetString(4).ToString());
                    }
                }
                con.Close();

            }
            catch(MySqlException error)
            {
                MessageBox.Show("Ocurrio el siguiente error: " + error.ToString());
            }
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            Insertar ins = new Insertar();
            ins.Show();
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            Modificar mod = new Modificar();
            mod.Show();
        }

        private void btnCSV_Click(object sender, EventArgs e)
        {
            TextWriter archivo = new StreamWriter("..\\..\\file.csv"); // cambiar por la direccion 
            archivo.Close();

            using (var writer = new StreamWriter(new FileStream("..\\..\\file.csv", FileMode.Open), Encoding.UTF8))
            using (var csvWriter = new CsvWriter(writer,CultureInfo.CurrentCulture))
            {
                CConexion objetoConexion = new CConexion();
                MySqlConnection con = objetoConexion.estableceConexion();

                string query = "select usr.login,usr.nombre,usr.paterno,usr.materno,sueldo,fechaIngreso from usuarios usr inner join empleados emp on usr.userId = emp.userId;";

                MySqlCommand Sql = new MySqlCommand(query, con);
                Sql.CommandTimeout = 60;

                con.Open();
                using(MySqlDataReader reader = Sql.ExecuteReader())
                {
                    if(reader.HasRows)
                    {
                        reader.Read();
                        for(int h = 0; h < reader.FieldCount; h++)
                        {
                            csvWriter.WriteField(reader.GetName(h).ToString());
                        }
                        csvWriter.NextRecord();
                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            csvWriter.WriteField(reader[i].ToString());
                        }
                        csvWriter.NextRecord();

                        while(reader.Read())
                        {
                            for (int x = 0; x < reader.FieldCount; x++)
                            {
                                csvWriter.WriteField(reader[x].ToString());
                            }
                            csvWriter.NextRecord();
                        }
                    }
                    con.Close();
                }
            }
            MessageBox.Show("Se genero correctamente el archivo CSV");

        }
    }
}
