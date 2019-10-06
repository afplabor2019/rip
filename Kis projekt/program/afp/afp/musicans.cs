using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace afp
{
    class musicans
    {
        // a tábla mezőihez belső mezőket veszek fel
        private int id;
        private string name;
        private string lakcim;
        private string elerhetoseg;
            //settereket biztosítok a mezőérték beállítására, amikor egy selectben a dbbol olvasok vissza tartalmakat
        public int Id
        {
            set { id = value; }
            get { return id; }
        }
        public string Name
        {
            set
            {
                if (value == null)
                    throw new ArgumentNullException("Az ország neve nem lehet null");
                if (value == String.Empty)
                    throw new ArgumentOutOfRangeException("Az ország neve nem lehet üres");
                name = value;
            }
            get { return name; }
        }
        public override string ToString()
        {
            return name;
        }
        public string Lakcim
        {
            set
            {
                if (value == null)
                    throw new ArgumentNullException("A személy lakcíme nem lehet null");
                if (value == String.Empty)
                    throw new ArgumentOutOfRangeException("A személy lakcíme nem lehet üres");
                name = value;
            }
            get { return lakcim; }

        }
        public string Elerhetoseg
        {
            set
            {
                if (value == null)
                    throw new ArgumentNullException("A személy elérhetősége nem lehet null");
                if (value == String.Empty)
                    throw new ArgumentOutOfRangeException("A személy elérhetősége nem lehet üres");
                name = value;
            }
            get { return elerhetoseg; }
        }

    }
}
