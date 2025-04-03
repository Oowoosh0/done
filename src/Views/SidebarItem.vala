/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Views.SidebarItem : Gtk.Box {
    public string title { get; construct; }
    public Gtk.Widget child_item { get; construct; }

    public SidebarItem (string title, Gtk.Widget child) {
        Object (
            title: title,
            child_item: child
        );
    }

    construct {
        orientation = Gtk.Orientation.VERTICAL;

        var title_label = new Gtk.Label (title);
        append (title_label);

        var revealer = new Gtk.Revealer () {
            child = child_item
        };
        append (revealer);
    }
}
