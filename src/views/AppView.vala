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
using Pignus.Widgets;

namespace Pignus.Views {
    /**
     * The {@code AppView} class.
     *
     * @since 1.0.0
     */
    public class AppView : Gtk.Box {

        /**
         * Constructs a new {@code AppView} object.
         */

        public Pignus.Widgets.Welcome welcome;

        public AppView () {
            // Welcome Widget
            build_welcome ();
        }

        private void build_welcome () {
            welcome = new Pignus.Widgets.Welcome ();
            add(welcome);
        }
    }
}
