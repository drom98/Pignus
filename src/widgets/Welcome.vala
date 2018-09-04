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

    public Welcome () {
        Object (
            title: _("No archives found"),
            subtitle: _("Create a new one to begin.")
        );
    }

    construct {
        append ("document-new", _("Add New Archive"), _("Create a new archive."));
        append ("folder-open", _("Open existing Archive"), _("Open an existing archive from your files."));
    }
}