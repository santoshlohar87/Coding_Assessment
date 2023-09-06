using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Coding_Assessment.Models;


namespace Coding_Assessment.BAL.cArtist
{
    public class ClsArtist
    {

        public List<StoredProc> GetArtistDetails(string artistname)
        {
            Xplor_DBEntities db = new Xplor_DBEntities();
            db.Database.Connection.Open();
            // var result1 =db.Artists.Where(x => x.Name.StartsWith(artistname));
            var result = db.PRC_GET_ARTIST(artistname);

            db.Database.Connection.Close();
            return result;

        }

    }
}