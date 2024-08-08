import { Application } from "@hotwired/stimulus";
import Notification from "@stimulus-components/notification";
import RevealController from "@stimulus-components/reveal";

const application = Application.start();

application.register("notification", Notification);
application.register("reveal", RevealController);

// Configure Stimulus development experience
application.debug = false;
window.Stimulus = application;

export { application };
