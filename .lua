local plr = game:GetService("Players").LocalPlayer

_G.FOVChangerBool = true --> you can put this into a toggle
_G.FOVValue = 120 --> you can put this into a slider

workspace.CurrentCamera.FieldOfView = _G.FOVValue

game:GetService("Workspace").Camera.Changed:Connect(function()
    if _G.FOVChangerBool then
        if workspace:FindFirstChild(plr.Name) then
            if workspace[plr.Name].ADS.Value == true then
                --nothing, will just go to default zoom fov since ads is on.
            else
                workspace.CurrentCamera.FieldOfView = _G.FOVValue
            end
        end
    end
end)
