//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MovieTheater1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class PHIM
    {
        public string MAPHIM { get; set; }
        public string TENPHIM { get; set; }
        public string MAQUOCGIA { get; set; }
        public string MALOAIPHIM { get; set; }
        public Nullable<System.DateTime> THOIGIANBD { get; set; }
        public Nullable<System.DateTime> THOIGIANKT { get; set; }
        public string THOILUONG { get; set; }
        public Nullable<short> SOLUONGSUAT { get; set; }
        public string MOTA { get; set; }
        public string GHICHU { get; set; }
        public string MABINHLUAN { get; set; }
        public string ANHDAIDIEN { get; set; }
        public string TENTIENGANH { get; set; }
        public Nullable<int> DANHGIA { get; set; }
        public string DAODIEN { get; set; }
        public string DIENVIEN { get; set; }
    
        public virtual BINHLUAN BINHLUAN { get; set; }
        public virtual LOAIPHIM LOAIPHIM { get; set; }
        public virtual QUOCGIA QUOCGIA { get; set; }
    }
}