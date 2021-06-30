using CRUD_Dao.Models;
using CRUD_Dao.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRUD_Dao.Dao
{
    interface IClienteDao : ICRUD<ClienteModel>
    {
        OperationResponse GetClientesPorFiltro(ClienteModel id);
    }
}
