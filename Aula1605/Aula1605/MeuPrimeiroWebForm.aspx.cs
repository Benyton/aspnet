using Aula1605.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aula1605
{
    public partial class MeuPrimeiroWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = string.Empty;
            chkAtivo.Checked = false;
            txtDescricao.Text = string.Empty;

            if (ViewState["Controle"] == null)
                ViewState.Add("Controle", "1");
            else
            {
                int quantidadeClique = (int)ViewState["Controle"];
                quantidadeClique++;
                ViewState["Controle"] = quantidadeClique;
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            Projeto proj = new Projeto();
            proj.Nome = txtNome.Text;
            proj.Ativo = chkAtivo.Checked;
            proj.Descricao = txtDescricao.Text;

            ViewState.Remove("Controle");
        }
    }
}