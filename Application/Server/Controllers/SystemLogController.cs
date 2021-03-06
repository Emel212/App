using DataAccessLayer.Abstract;
using Entities.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Application.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class SystemLogController : ControllerBase
    {
            protected IRepository<SystemLogs> _repository;
        protected IsystemLogs _syslog;
            protected CoreDbContext _ctx;

            public SystemLogController(IRepository<SystemLogs> repository,IsystemLogs syslog)
            {
                _repository = repository;
                _syslog = syslog;
                _ctx = new CoreDbContext();
            }
        List<string> logs = new List<string>();
        [HttpGet]
        public IActionResult GetAllLogs()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-MR18V5O\\SQLEXPRESS;initial catalog=DBbtyon;integrated security=true;");
            SqlDataAdapter adp = new SqlDataAdapter("Select Description from SystemLogs", con);
            adp.SelectCommand.CommandType = CommandType.Text;
            DataTable dt = new DataTable();
            con.Open();
             adp.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                logs.Add(dt.Rows[i].Field<string>("Description"));
            }
            con.Close();
            return Ok(logs);

        }
        
    }
}
