require_relative '../views/appointments_view'

class AppointmentsController
  def initialize(appointment_repository, doctor_repository, patient_repository)
    @appointment_repository = appointment_repository
    @doctor_repository = doctor_repository
    @patient_repository = patient_repository

    @view = AppointmentsView.new
    @doctors_view = DoctorsView.new
    @patients_view = PatientsView.new

  end

  def list
    appointments = @appointment_repository.all
    @view.list(appointments)
  end

  def create

    doctors = @doctor_repository.all
    @doctors_view.list(doctors)
    index = @doctors_view.ask_index
    doctor = doctors[index]

    patients = @patient_repository.all
    @patients_view.list(patients)
    index = @patients_view.ask_index
    patient = patients[index]

    date = @view.ask_date

    appointment = Appointment.new(date: date, patient: patient, doctor: doctor)

    @appointment_repository.add(appointment)

  end
end
