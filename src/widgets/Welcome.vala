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

public class Pignus.Widgets.Welcome : Granite.Widgets.Welcome {

    public unowned Pignus.Window window { get; construct; }

    public Welcome () {
        Object (
            title: _("No Archives Found"),
            subtitle: _("Create or open a new archive to begin.")
        );
    }

    construct {
        append ("document-new", _("Add New Archive"), _("Create a new archive."));
        append ("folder-open", _("Open existing Archive"), _("Open an existing archive from your files."));

        activated.connect ( index => {
            switch (index) {
                case 0:
                    //Code
                break;
                case 1:
                    import_file ();
                break;
            }
        });
    }

    private void import_file (Gtk.Dialog parent_dialog, Gtk.TreeView tree_view, Gtk.TreeIter iter, Gtk.ListStore list_store, string[] formats) {
        
    }            

    private void import_warning (string message) {
        var message_dialog = new Granite.MessageDialog.with_image_from_icon_name (_("Unable to import atchive "), message, "dialog-error", Gtk.ButtonsType.NONE);
        message_dialog.transient_for = window;
        
        var suggested_button = new Gtk.Button.with_label ("Close");
        message_dialog.add_action_widget (suggested_button, Gtk.ResponseType.ACCEPT);

        message_dialog.show_all ();
        if (message_dialog.run () == Gtk.ResponseType.ACCEPT) {}

        message_dialog.destroy ();
    }
}