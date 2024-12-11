// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";

// gem "local-time"
import LocalTime from "local-time"
import {localTimeLocales} from "./local_time_locale"
LocalTime.config.i18n["pt"] = localTimeLocales["pt"]
LocalTime.config.locale = "pt"
LocalTime.start()

Turbo.StreamActions.redirect = function () {
  Turbo.visit(this.target);
};
