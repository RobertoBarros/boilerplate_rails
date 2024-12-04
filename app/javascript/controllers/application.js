import { Application } from "@hotwired/stimulus";
import Notification from "@stimulus-components/notification";
import Reveal from "@stimulus-components/reveal";

const application = Application.start();

application.register("notification", Notification);
application.register("reveal", Reveal);

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

export { application };
