/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Views.TaskRow : Gtk.Grid {

    construct {
        var label = new Gtk.Label ("test test!");
        attach (label, 0, 0);
    }
}
