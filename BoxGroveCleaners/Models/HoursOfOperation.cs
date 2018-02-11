using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Xml.Serialization;

namespace BoxGroveCleaners.Models
{
    public class HoursOfOperation
    {
        #region Private Fields & Constants
        public const string DATA_FILE_PATH = "\\Models\\HoursOfOperation.xml";
        #endregion

        #region Properties
        public List<Day> Days { get; set; }
        #endregion

        #region Constructors
        public HoursOfOperation()
        {
            Days = new List<Day>();
        }
        #endregion

        #region Methods
        public void LoadData()
        {
            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(HoursOfOperation));

            HoursOfOperation hoursOfOperation;

            using (var reader = new StreamReader(path))
            {
                hoursOfOperation = (HoursOfOperation)serializer.Deserialize(reader);
            }

            Days = new List<Day>();

            foreach (var day in hoursOfOperation.Days)
            {
                day.Name = day.Name;
                day.Hours = day.Hours;
                Days.Add(day);
            }

            DecodeDayList();
        }
        #endregion

        #region Helpers
        private void EncodeDayList()
        {
            var results = new List<Day>();

            foreach (var day in Days)
            {
                day.Name = HttpUtility.UrlEncode(day.Name);
                day.Hours = HttpUtility.UrlEncode(day.Hours);
                results.Add(day);
            }

            Days = results;
        }

        private void DecodeDayList()
        {
            var results = new List<Day>();

            foreach (var day in Days)
            {
                day.Name = HttpUtility.UrlDecode(day.Name);
                day.Hours = HttpUtility.UrlDecode(day.Hours);
                results.Add(day);
            }

            Days = results;
        }
        #endregion
    }

    public class Day
    {
        public int Key { get; set; }

        public string Name { get; set; }

        public string Hours { get; set; }
    }
}