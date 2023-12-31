﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Coding_Assessment
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    using System.Collections.Generic;

    public partial class Xplor_DBEntities : DbContext
    {
        public Xplor_DBEntities()
            : base("name=Xplor_DBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Area> Areas { get; set; }
        public virtual DbSet<Artist> Artists { get; set; }
        public virtual DbSet<Recording> Recordings { get; set; }



        public virtual List<StoredProc> PRC_GET_ARTIST(string nAME)
        {

            List<StoredProc> strc = new List<StoredProc>();

            var nAMEParameter = nAME != null ?
                new ObjectParameter("NAME", nAME) :
                new ObjectParameter("NAME", typeof(string));

            
            using (Xplor_DBEntities context = new Xplor_DBEntities())
            {
               var empDetails = context.Database.SqlQuery<StoredProc>("exec PRC_GET_ARTIST @NAME = '"+ nAME +"'").ToList();
                if(empDetails.Count >0)
                    { strc = empDetails; }
                

            }

          

            return strc;
        }
    }
}
