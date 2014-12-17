using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace aspwssandbox
{
    public class SimpleObject
    {
        public SimpleObject(string name)
        {
            Name = name;
        }

        public string Name
        {
            get;
            set;
        }

        public int Number
        {
            get;
            set;
        }
    }
}