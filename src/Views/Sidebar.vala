/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Views.Sidebar : Gtk.Widget {

    construct {
        layout_manager = new Gtk.BoxLayout (Gtk.Orientation.VERTICAL);

        add_css_class (Granite.STYLE_CLASS_SIDEBAR);

        var projects_list = new Gtk.ListBox () {
            selection_mode = Gtk.SelectionMode.SINGLE
        };
        var projects = new SidebarItem ("Projects", projects_list);
        projects.set_parent (this);

        var tags_list = new Gtk.ListBox () {
            selection_mode = Gtk.SelectionMode.SINGLE
        };
        var tags = new SidebarItem ("Tags", tags_list);
        tags.set_parent (this);

    }
}
