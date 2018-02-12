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

        public void Add(string name, string hours)
        {
            if (Days.Count == 0)
            {
                LoadData();
            }

            var newDay = new Day();
            newDay.Key = 1;

            if (Days.Count > 0)
            {
                newDay.Key = Days[Days.Count - 1].Key + 1;
            }

            newDay.Name = name;
            newDay.Hours = hours;
            Days.Add(newDay);
            EncodeDayList();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(HoursOfOperation));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodeDayList();
        }

        public void Remove(int key)
        {
            if (Days.Count == 0)
            {
                LoadData();
            }

            var updatedDays = new List<Day>();

            foreach (var day in Days)
            {
                if (day.Key != key)
                {
                    updatedDays.Add(day);
                }
            }

            Days = updatedDays;
            EncodeDayList();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(HoursOfOperation));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodeDayList();
        }

        public void Update(int key, string name, string hours)
        {
            if (Days.Count == 0)
            {
                LoadData();
            }

            foreach (var day in Days)
            {
                if (day.Key == key)
                {
                    day.Name = name;
                    day.Hours = hours;
                }
            }

            EncodeDayList();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(HoursOfOperation));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
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