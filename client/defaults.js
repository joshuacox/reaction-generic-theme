import { Session } from "meteor/session";
import { Logger } from "/client/api";

Session.set("DEFAULT_LAYOUT", "coreLayoutLeahLovise");
Logger.info("setting DEFAULT_LAYOUT");
