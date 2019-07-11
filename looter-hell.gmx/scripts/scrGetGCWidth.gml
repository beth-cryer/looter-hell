uiwidth = gwidth;

//get max width of text
if (type != "Shield") update_uiwidth("DPS: " + string(damage*rate + elem_dps));
update_uiwidth(string(element));
update_uiwidth(load_text("elementchance") + ": " + string(elem_chance));
width1 = uiwidth;
uiwidth = 0;
update_uiwidth(string(name));
update_uiwidth(load_text("level") + ": " + string(level) + " " + string(type));
if (type == "Shield") {
    update_uiwidth(load_text("capacity") + ": " + string(capacity));
    update_uiwidth(load_text("shieldrate") + ": " + string(chargerate));
    update_uiwidth(load_text("shielddelay") + ": " + string(delay));
}else{
    update_uiwidth(load_text("damage") + ": " + string(damage));
    update_uiwidth(load_text("accuracy") + ": " + string(acc));
    update_uiwidth(load_text("firerate") + ": " + string(rate));
    update_uiwidth(load_text("reloadspeed") + ": " + string(reload));
    update_uiwidth(load_text("magsize") + ": " + string(mag));
}
update_uiwidth(redtext);
width2 = uiwidth;

width = width1+width2;
