/*
 * SPDX-License-Identifier:  GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2025 contributors to https://github.com/Oowoosh0/done
 */

public class Done.Models.Task : Object {
    public uint id { get; construct; }
    public string title { get; set; }

    public Task (uint id, string title) {
        Object (
            id: id,
            title: title
        );
    }
}
