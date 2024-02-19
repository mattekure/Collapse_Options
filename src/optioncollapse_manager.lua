function onTabletopInit()
    ToolbarManager.registerButton("collapse",
        {
            sType = "action",
            sIcon = "button_collapse",
            sTooltipRes = "tooltip_collapse",
            fnActivate = collapseOptions,
        });
    ToolbarManager.registerButton("expandall",
        {
            sType = "action",
            sIcon = "button_expand",
            sTooltipRes = "tooltip_expand",
            fnActivate = expandOptions,
        });
end

function collapseOptions()
    local w = Interface.findWindow("options", "");
    local tWindows = w.list.getWindows();
    for _, v in ipairs(tWindows) do
        v.status.setValue(1);
        v.options_list.setVisible(false);
    end
end

function expandOptions()
    local w = Interface.findWindow("options", "");
    local tWindows = w.list.getWindows();
    for _, v in ipairs(tWindows) do
        v.status.setValue(0);
        v.options_list.setVisible(true);
    end
end
