using System;

namespace ExampleWebApplication
{
    public partial class AddPerson1 : System.Web.UI.Page
    {
        public Person Person { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            Person = new Person();


        }
        

        protected void InsertButton_OnClick(object sender, EventArgs e)
        {
            Person.Name = Name.Value;
            Person.Surname = Surname.Value;
            DateTime.TryParse(BirthDate.Value, out var bDate);
            Person.BirthDate = bDate;
            Enum.TryParse(Gender.Value, out Gender gender);
            Person.Gender = gender;
            Person.Pesel = Pesel.Value;

            PersonRepository.Instance.AddPerson(Person);

            Response.Redirect("Index.aspx");
        }

        protected void CancelButton_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}