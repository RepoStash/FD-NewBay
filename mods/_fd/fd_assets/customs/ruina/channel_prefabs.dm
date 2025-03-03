#define COMMS_COLOR_FREEDOM "#996600"
var/global/const/FREE_FREQ = 1481

world/New()
    ..()

    radiochannels["Freedom"] = FREE_FREQ
    department_radio_keys[":f"] = "Freedom"
    department_radio_keys[".f"] = "Freedom"
    department_radio_keys[":F"] = "Freedom"
    department_radio_keys[".F"] = "Freedom"
    department_radio_keys[":а"] = "Freedom"
    department_radio_keys[":А"] = "Freedom"
    department_radio_keys[".а"] = "Freedom"
    department_radio_keys[".А"] = "Freedom"

/obj/machinery/telecomms/server/presets/command/freedom
    id = "Command Server"
    freq_listening = list(COMM_FREQ, FREE_FREQ)
    channel_tags = list(
        list(COMM_FREQ, "Command", COMMS_COLOR_COMMAND),
        list(FREE_FREQ, "Freedom", COMMS_COLOR_FREEDOM))
    autolinkers = list("command")

/obj/machinery/telecomms/bus/preset_three/freedom
    id = "Bus 3"
    network = "tcommsat"
    freq_listening = list(SEC_FREQ, COMM_FREQ, FREE_FREQ)
    autolinkers = list("processor3", "security", "command")

/obj/item/device/encryptionkey/freedom
    name = "freedom radio encryption key"
    icon_state = "cypherkey"
    channels = list("Freedom" = 1)

#undef COMMS_COLOR_FREEDOM
