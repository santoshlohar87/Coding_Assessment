using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Coding_Assessment.BAL;
using Newtonsoft.Json;
namespace Coding_Assessment.Controllers
{
    public class ArtistController : ApiController
    {
        // GET: api/Artist
        public IEnumerable<string> Get()
        {
            return new string[] {


                "value1", "value2"

            };
        }

        // GET: api/Artist/5
        public string Get(string artistName)
        {
            return "value";
        }

        // POST: api/Artist
        public  List<StoredProc> Post([FromBody]string value)
        {
            List<StoredProc> result = new List<StoredProc>();
            BAL.cArtist.ClsArtist Art = new BAL.cArtist.ClsArtist();
            result = Art.GetArtistDetails(value);
            // var result = JsonConvert.SerializeObject(v);
            return result;
        }

        // PUT: api/Artist/5
        public void Put(int id, [FromBody]string value)
        {

        }

        // DELETE: api/Artist/5
        public void Delete(int id)
        {
        }
    }
}
