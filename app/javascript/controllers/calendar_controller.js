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
      initialView: 'listWeek',
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,listWeek'
      },
      events: bookings,
      eventContent: function (info) {
        console.log(info)
        let arrayOfDomNodes = []
        // title event
        let titleEvent = document.createElement('div')
        if (info.event._def.title) {
          titleEvent.setAttribute("data-toggle", "tooltip")
          titleEvent.setAttribute("title", info.event._def.title)
          titleEvent.setAttribute("data-placement", "top")
          titleEvent.innerHTML = info.view.type == "listWeek" ? info.event._def.title : info.event.extendedProps.short_title
          titleEvent.classList = info.view.type == "dayGridMonth" ? "fc-event-title" : "fc-list-event-title" //seperates the list/month view 
        }

        // image event
        let imgEventWrap = document.createElement('div')
        if (info.event.extendedProps.image_url) {
          let imgEvent = '<img src="' + info.event.extendedProps.image_url + '" >'
          imgEventWrap.classList = "fc-event-img"
          imgEventWrap.innerHTML = imgEvent;
        }

        arrayOfDomNodes = [titleEvent, imgEventWrap]

        return { domNodes: arrayOfDomNodes }
      }


    });

    calendar.render();
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })
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
