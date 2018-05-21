using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Xml.Serialization;

namespace BoxGroveCleaners.Models
{
    public class Pricing
    {
        #region Private Fields & Constants
        public const string DATA_FILE_PATH = "\\Models\\Pricing.xml";
        #endregion

        #region Properties
        public List<Price> Prices { get; set; }
        #endregion

        #region Constructors
        public Pricing() 
        {
            Prices = new List<Price>();
        }
        #endregion

        #region Methods
        public void LoadData()
        {
            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(Pricing));

            Pricing pricing;

            using (var reader = new StreamReader(path))
            {
                pricing = (Pricing)serializer.Deserialize(reader);
            }

            Prices = new List<Price>();

            foreach (var price in pricing.Prices)
            {
                Prices.Add(price);
            }

            DecodePrices();
        }

        public void Add(string description)
        {
            if (Prices.Count == 0)
            {
                LoadData();
            }

            var newPrice = new Price();
            newPrice.Key = 1;

            if (Prices.Count > 0)
            {
                newPrice.Key = Prices[Prices.Count - 1].Key + 1;
            }

            newPrice.Description = description;
            Prices.Add(newPrice);
            EncodePrices();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(Pricing));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodePrices();
        }

        public void Remove(int key)
        {
            if (Prices.Count == 0)
            {
                LoadData();
            }

            var updatedPrices = new List<Price>();

            foreach (var price in Prices)
            {
                if (price.Key != key)
                {
                    updatedPrices.Add(price);
                }
            }

            Prices = updatedPrices;
            EncodePrices();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(Pricing));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodePrices();
        }
        #endregion

        #region Helpers
        private void EncodePrices()
        {
            var results = new List<Price>();

            foreach (var price in Prices)
            {
                price.Description = HttpUtility.UrlEncode(price.Description);
                results.Add(price);
            }

            Prices = results;
        }

        private void DecodePrices()
        {
            var results = new List<Price>();

            foreach (var price in Prices)
            {
                price.Description = HttpUtility.UrlDecode(price.Description);

                results.Add(price);
            }

            Prices = results;
        }
        #endregion
    }

    public class Price
    {
        public int Key { get; set; }

        public string Description { get; set; }
    }
}