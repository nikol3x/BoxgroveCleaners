using System.Collections.Generic;
using System.IO;
using System.Web;
using System.Xml.Serialization;

namespace BoxGroveCleaners.Models
{
    public class FAQs
    {
        #region Private Fields & Constants
        public const string DATA_FILE_PATH = "\\Models\\FAQs.xml";
        #endregion

        #region Properties
        public List<Faq> FaqList { get; set; }
        #endregion

        #region Constructors
        public FAQs() 
        {
            FaqList = new List<Faq>();
        }
        #endregion

        #region Methods
        public void LoadData()
        {
            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(FAQs));

            FAQs faqs;

            using (var reader = new StreamReader(path))
            {
                faqs = (FAQs)serializer.Deserialize(reader);
            }

            FaqList = new List<Faq>();

            foreach (var faq in faqs.FaqList)
            {
                faq.Question = faq.Question;
                faq.Answer = faq.Answer;
                FaqList.Add(faq);
            }

            DecodeFaqList();
        }

        public void Add(string question, string answer)
        {
            if (FaqList.Count == 0)
            {
                LoadData();
            }

            var newFaq = new Faq();
            newFaq.Key = 1;

            if (FaqList.Count > 0)
            {
                newFaq.Key = FaqList[FaqList.Count - 1].Key + 1;
            }

            newFaq.Question = question;
            newFaq.Answer = answer;
            FaqList.Add(newFaq);
            EncodeFaqList();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(FAQs));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodeFaqList();
        }

        public void Remove(int key)
        {
            if (FaqList.Count == 0)
            {
                LoadData();
            }

            var updatedFaqList = new List<Faq>();

            foreach (var faq in FaqList)
            {
                if (faq.Key != key)
                {
                    updatedFaqList.Add(faq);
                }
            }

            FaqList = updatedFaqList;
            EncodeFaqList();

            var path = HttpContext.Current.Server.MapPath(DATA_FILE_PATH);
            var serializer = new XmlSerializer(typeof(FAQs));

            using (var writer = new StreamWriter(path))
            {
                serializer.Serialize(writer, this);
            }

            DecodeFaqList();
        }
        #endregion

        #region Helpers
        private void EncodeFaqList()
        {
            var results = new List<Faq>();

            foreach (var faq in FaqList)
            {
                faq.Question = HttpUtility.UrlEncode(faq.Question);
                faq.Answer = HttpUtility.UrlEncode(faq.Answer);
                results.Add(faq);
            }

            FaqList = results;
        }

        private void DecodeFaqList()
        {
            var results = new List<Faq>();

            foreach (var faq in FaqList)
            {
                faq.Question = HttpUtility.UrlDecode(faq.Question);
                faq.Answer = HttpUtility.UrlDecode(faq.Answer);
                results.Add(faq);
            }

            FaqList = results;
        }
        #endregion
    }

    public class Faq
    {
        public int Key { get; set; }

        public string Question { get; set; }

        public string Answer { get; set; }
    }
}