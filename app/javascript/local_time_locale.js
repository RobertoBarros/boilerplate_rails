const localTimeLocales = {
  en: {
    date: {
      dayNames: [
        "Sunday",
        "Monday",
        "Tuesday",
        "Wednesday",
        "Thursday",
        "Friday",
        "Saturday"
      ],
      abbrDayNames: [
        "Sun",
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat"
      ],
      monthNames: [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December"
      ],
      abbrMonthNames: [
        "Jan",
        "Feb",
        "Mar",
        "Apr",
        "May",
        "Jun",
        "Jul",
        "Aug",
        "Sep",
        "Oct",
        "Nov",
        "Dec"
      ],
      yesterday: "yesterday",
      today: "today",
      tomorrow: "tomorrow",
      on: "on {date}",
      formats: {
        default: "%b %e, %Y",
        thisYear: "%b %e"
      }
    },
    time: {
      am: "am",
      pm: "pm",
      singular: "a {time}",
      singularAn: "an {time}",
      elapsed: "{time} ago",
      second: "second",
      seconds: "seconds",
      minute: "minute",
      minutes: "minutes",
      hour: "hour",
      hours: "hours",
      formats: {
        default: "%l:%M%P"
      }
    },
    datetime: {
      at: "{date} at {time}",
      formats: {
        default: "%B %e, %Y at %l:%M%P %Z"
      }
    }
  },
  pt: {
    date: {
      dayNames: [
        "Domingo",
        "Segunda-feira",
        "Terça-feira",
        "Quarta-feira",
        "Quinta-feira",
        "Sexta-feira",
        "Sábado"
      ],
      abbrDayNames: [
        "Dom",
        "Seg",
        "Ter",
        "Qua",
        "Qui",
        "Sex",
        "Sáb"
      ],
      monthNames: [
        "Janeiro",
        "Fevereiro",
        "Março",
        "Abril",
        "Maio",
        "Junho",
        "Julho",
        "Agosto",
        "Setembro",
        "Outubro",
        "Novembro",
        "Dezembro"
      ],
      abbrMonthNames: [
        "Jan",
        "Fev",
        "Mar",
        "Abr",
        "Mai",
        "Jun",
        "Jul",
        "Ago",
        "Set",
        "Out",
        "Nov",
        "Dez"
      ],
      yesterday: "ontem",
      today: "hoje",
      tomorrow: "amanhã",
      on: "em {date}",
      formats: {
        default: "%d/%m/%Y",
        thisYear: "%d/%m"
      }
    },
    time: {
      am: "am",
      pm: "pm",
      singular: "um {time}",
      singularAn: "um {time}",
      elapsed: "há {time}",
      second: "segundo",
      seconds: "segundos",
      minute: "minuto",
      minutes: "minutos",
      hour: "hora",
      hours: "horas",
      formats: {
        default: "%H:%M"
      }
    },
    datetime: {
      at: "{date} às {time}",
      formats: {
        default: "%d de %B de %Y às %H:%M %Z"
      }
    }
  }
};

export { localTimeLocales };
