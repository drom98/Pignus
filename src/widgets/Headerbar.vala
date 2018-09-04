/*
* Copyright (C) 2018  Diogo Oliveira <diogoomarques98@gmail.com>
* 
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

using Pignus.Configs;

public class Pignus.Widgets.Headerbar : Gtk.HeaderBar {

    public Gtk.Button new_file;

    public Headerbar () {
        Object (
            title: Constants.PROGRAME_NAME,
            show_close_button: true,
            has_subtitle: false
        );
    }

    construct {
        //New File Icon
        new_file = new Gtk.Button.from_icon_name ("document-new-symbolic", Gtk.IconSize.BUTTON);
        new_file.tooltip_text = _("New archive");

        //Options Menu
        var preferences_menuitem = new Gtk.ModelButton ();
        preferences_menuitem.text = _("Preferences");

        var menu_grid = new Gtk.Grid ();
        menu_grid.margin_bottom = 3;
        menu_grid.orientation = Gtk.Orientation.VERTICAL;
        menu_grid.width_request = 200;
        

        var menu = new Gtk.Popover (null);
        menu.add (menu_grid);

        var app_menu = new Gtk.MenuButton ();
        app_menu.image = new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.BUTTON);
        app_menu.tooltip_text = _("Menu");
        app_menu.popover = menu;

        pack_start (new_file);
        pack_end (app_menu);

        show_all ();
    }
}