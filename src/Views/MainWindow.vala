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
}
