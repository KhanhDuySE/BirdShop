﻿using BusinessObject.Models;
using ManagementDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class DetailRepository : IDetailRepository
    {
        public List<AccountDetail> GetAll() => DetailDAO.Instance.GetAll();
    }
}
