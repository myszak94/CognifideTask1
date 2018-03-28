using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace ExampleWebApplication
{
    public class PersonRepository
    {
        private PersonRepository()
        {
            Persons = new List<Person>();
        }

        private static PersonRepository _instance;

        public static PersonRepository Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new PersonRepository();
                }

                return _instance;
            }
        }

        private List<Person> Persons { get; }

        public void AddPerson(Person person)
        {
            Persons.Add(person);
        }

        public List<Person> GetPersons()
        {
            return Persons;
        }
    }
}