/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Views.MainWindow : Gtk.ApplicationWindow {
    public MainWindow (Gtk.Application app) {
        Object (
            application: app,
            title: "Done",
            width_request: 800,
            height_request: 500
        );
    }

    construct {
        var sidebar = new Sidebar ();

        var task_list = new ListStore (typeof (Models.Task));
        task_list.append (new Models.Task (1, "test task 1"));
        task_list.append (new Models.Task (1, "test task 2"));

        var selection_model = new Gtk.SingleSelection (task_list);

        var tasklist_factory = new Gtk.SignalListItemFactory ();
        tasklist_factory.setup.connect ((obj) => {
            var list_item = (Gtk.ListItem) obj;
            list_item.child = new TaskRow ();
        });

        tasklist_factory.bind.connect ((obj) => {

        });

        var task_listview = new Gtk.ListView (selection_model, tasklist_factory) {
            single_click_activate = true,
            show_separators = true,
            hexpand = true,
            vexpand = true
        };

        var main_content = new Gtk.Stack ();
        main_content.add_child (task_listview);

        var paned = new Gtk.Paned (Gtk.Orientation.HORIZONTAL) {
            start_child = sidebar,
            end_child = main_content,
            resize_start_child = false,
            shrink_end_child = false,
            shrink_start_child = false
        };

        child = paned;
    }
}
