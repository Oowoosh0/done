/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Views.Sidebar : Gtk.Box {

    construct {
        orientation = Gtk.Orientation.VERTICAL;
        add_css_class (Granite.STYLE_CLASS_SIDEBAR);

        var projects_list = new Gtk.ListBox () {
            selection_mode = Gtk.SelectionMode.SINGLE
        };
        var projects = new SidebarItem ("Projects", projects_list);
        append (projects);

        var tags_list = new Gtk.ListBox () {
            selection_mode = Gtk.SelectionMode.SINGLE
        };
        var tags = new SidebarItem ("Tags", tags_list);
        append (tags);
    }
}
