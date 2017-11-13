/*
* Copyright (c) 2017 Daniel Foré (http://danielfore.com)
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*/

public class MainWindow : Gtk.Window {
    public MainWindow (Gtk.Application application) {
        Object (
            application: application,
            icon_name: "com.github.danrabbit.splitz",
            title: _("Splitz")
        );
    }

    construct {
        var gtk_settings = Gtk.Settings.get_default ();
        gtk_settings.gtk_application_prefer_dark_theme = true;

        var splits_listbox = new Gtk.ListBox ();
        splits_listbox.expand = true;

        var timer_label = new Gtk.Label ("0:00.00");
        timer_label.halign = Gtk.Align.END;
        timer_label.get_style_context ().add_class ("h1");

        var sum_of_best_key = new Gtk.Label (_("Sum of best segments:"));
        sum_of_best_key.halign = Gtk.Align.END;
        sum_of_best_key.hexpand = true;

        var sum_of_best_label = new Gtk.Label ("0:00.00");
        sum_of_best_label.halign = Gtk.Align.START;
        sum_of_best_label.xalign = 0;

        var possible_time_key = new Gtk.Label (_("Best possible time:"));
        possible_time_key.halign = Gtk.Align.END;

        var possible_time_label = new Gtk.Label ("0:00.00");
        possible_time_label.halign = Gtk.Align.START;
        possible_time_label.xalign = 0;

        var grid = new Gtk.Grid ();
        grid.margin = 12;
        grid.column_spacing = 6;
        grid.row_spacing = 6;
        grid.attach (splits_listbox, 0, 0, 2, 1);
        grid.attach (new Gtk.Separator (Gtk.Orientation.HORIZONTAL), 0, 1, 2, 1);
        grid.attach (timer_label, 0, 2, 2, 1);
        grid.attach (sum_of_best_key, 0, 3, 1, 1);
        grid.attach (sum_of_best_label, 1, 3, 1, 1);
        grid.attach (possible_time_key, 0, 4, 1, 1);
        grid.attach (possible_time_label, 1,4, 1, 1);

        var headerbar = new Gtk.HeaderBar ();
        headerbar.show_close_button = true;

        var headerbar_context = headerbar.get_style_context ();
        headerbar_context.add_class (Gtk.STYLE_CLASS_FLAT);
        headerbar_context.add_class ("default-decoration");

        add (grid);
        get_style_context ().add_class ("rounded");
        set_titlebar (headerbar);
    }
}
