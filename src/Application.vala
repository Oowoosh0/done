/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.App : Gtk.Application {
    public App () {
        Object (
            application_id: APP_ID,
            flags: ApplicationFlags.DEFAULT_FLAGS
        );
    }

    construct {
        Intl.setlocale (LocaleCategory.ALL, "");
        Intl.bindtextdomain (GETTEXT_PACKAGE, LOCALEDIR);
        Intl.bind_textdomain_codeset (GETTEXT_PACKAGE, "UTF-8");
        Intl.textdomain (GETTEXT_PACKAGE);
    }

    protected override void startup () {
        base.startup ();
        Granite.init ();
    }

    protected override void activate () {
        if (active_window != null) {
            active_window.present ();
            return;
        }

        var main_window = new Views.MainWindow (this);
        main_window.present ();
    }

    public static int main (string[] args) {
        return new Done.App ().run (args);
    }
}
