using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExampleWebApplication
{
    public partial class Index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            People.DataSource = PersonRepository.Instance.GetPersons();
            People.DataBind();
        }

        protected void People_OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            People.PageIndex = e.NewPageIndex;
            People.DataBind();
        }

        protected void People_OnSorting(object sender, GridViewSortEventArgs e)
        {        }

        protected void GenderFilteringButn_OnClick(object sender, EventArgs e)
        {
            Enum.TryParse(GenderFiltering.Value, out Gender gender);

            People.DataSource = PersonRepository.Instance.GetPersons()
                .Where(p => p.Gender.Equals(gender)).ToList();
            People.DataBind();
        }

        protected void NumberOfRecordsFilteringBtn_OnClick(object sender, EventArgs e)
        {
            int.TryParse(NumberOfRecordsFiltering.Value, out var records);

            People.DataSource = PersonRepository.Instance.GetPersons().Take(records).ToList();
            People.DataBind();
        }

        protected void DateFilteringBtn_OnClick(object sender, EventArgs e)
        {
            DateTime.TryParse(DateFilteringFrom.Value, out var dateFrom);
            DateTime.TryParse(DateFilteringTo.Value, out var dateTo);

            People.DataSource = PersonRepository.Instance.GetPersons()
                .Where(p => p.BirthDate >= dateFrom && p.BirthDate <= dateTo).ToList();
            People.DataBind();
        }
    }
}