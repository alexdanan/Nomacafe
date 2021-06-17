// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"
import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';
import timeGridPlugin from '@fullcalendar/timegrid';
import listPlugin from '@fullcalendar/list';

export default class extends Controller {
  static targets = ["element"];



  connect() {
    this.initCalendar();
    this.initColorChange();

  }

  initCalendar() {
    let bookings = JSON.parse(this.elementTarget.dataset.bookings)
    let calendar = new Calendar(this.elementTarget, {
      plugins: [dayGridPlugin, timeGridPlugin, listPlugin],
      initialView: 'dayGridMonth',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,listWeek'
      },
      events: bookings
    });

    calendar.render();
  }

  initColorChange() {
    const calendarListIcon = document.querySelector(".fc-listWeek-button")
    calendarListIcon.addEventListener("click", () => {
      const calendarEvents = document.querySelectorAll(".fc-list-event")
      calendarEvents.forEach(event => {
        const calendarIcon = event.querySelector(".fc-list-event-dot")
        const calendarText = event.querySelector(".fc-list-event-title")
        if (calendarText.innerHTML.includes("accepted")) {
          calendarIcon.style.borderColor = "green"
        } else if (calendarText.innerHTML.includes("pending")) {
          calendarIcon.style.borderColor = "red"
        }
      })
    })
  }
}
