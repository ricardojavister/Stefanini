using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;

namespace WebApiMedicalApp.Controllers
{
    public class AppointmentController : ApiController
    {
        private MedicalAppointmentEntities db = new MedicalAppointmentEntities();
        // GET: api/Appointment
        public IHttpActionResult Get(int id)
        {
            var l = db.Appointments.Where(x => x.IdPatient == id).Where(x => x.IdStatus == (int)Status.Assigned).ToList();
            if (l == null)
            {
                return NotFound();
            }
            return Json<List<Appointment>>(l);
        }

        // POST: api/Appointment
        public Appointment Post(Appointment appointment)
        {
            appointment = db.Appointments.Add(appointment);
            db.SaveChanges();
            return appointment;
        }

        public Appointment Put(Appointment appointment)
        {
            Appointment appointmenttoEdit = new Appointment();
            appointmenttoEdit = db.Appointments.Where(x => x.IdAppointment == appointment.IdAppointment).FirstOrDefault();

            if (appointment.IdStatus == (int)Status.Cancelled)
            {
                CancelAppoinment(appointmenttoEdit); return appointmenttoEdit;
            }
            else {
                CancelAppoinment(appointmenttoEdit);

                //Create New appointment
                Appointment newAppointment = new Appointment();
                newAppointment =  db.Appointments.Add(new Appointment { IdDoctor =  appointment.IdDoctor, IdPatient =  appointment.IdPatient, IdStatus =  (int)Status.Assigned, Date =  appointment.Date });
                db.SaveChanges();
                return newAppointment;
            }
        }

        private void CancelAppoinment(Appointment appointmenttoEdit) {
            //Cancel old appointment
            var hours = (DateTime.Now - appointmenttoEdit.Date).TotalHours;
            if (hours > 12)
            {
                appointmenttoEdit.IdStatus = (int)Status.Cancelled;
                db.Entry(appointmenttoEdit).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();       
            }
        }

        // PUT: api/Appointment/5
        public void Put(int id, [FromBody]string value)
    {
    }

    // DELETE: api/Appointment/5
    public void Delete(int id)
    {
    }
}

public enum Status
{
    Assigned = 1,
    Cancelled = 2,
    Reassigned = 3
}
}
