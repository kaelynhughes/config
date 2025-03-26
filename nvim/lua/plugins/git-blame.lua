return {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
        enabled = false,
        message_template = "    <author> • <date> • <summary>",
        date_format = "%m-%d-%Y",
        message_when_not_committed = "  Uncommitted changes",
    }
}
