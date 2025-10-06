-- Simple Test Script
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")

-- Create a new UI element
local testGui = Instance.new("ScreenGui")
testGui.Name = "TestAutomationUI"
testGui.Parent = CoreGui

local testLabel = Instance.new("TextLabel")
testLabel.Size = UDim2.new(0, 200, 0, 50)
testLabel.Position = UDim2.new(0.5, -100, 0.5, -25)
testLabel.BackgroundTransparency = 0
testLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
testLabel.TextColor3 = Color3.new(1, 1, 1)
testLabel.Font = Enum.Font.SourceSansBold
testLabel.TextSize = 18
testLabel.Text = "Running Test Script..."
testLabel.Parent = testGui

-- Function to run the main logic
local function runTest()
    local count = 0
    while task.wait(1) do
        count = count + 1
        
        -- Generate random color
        local r = math.random()
        local g = math.random()
        local b = math.random()
        
        -- Update the label
        testLabel.Text = "Test Running: Cycle " .. count
        testLabel.BackgroundColor3 = Color3.new(r, g, b)
        
        -- Print to console for confirmation
        print("Test Script: Cycle " .. count .. " | Color Updated.")
        
        if count >= 10 then
            -- Stop after 10 cycles for safety
            testLabel.Text = "TEST COMPLETE. Script stopping."
            task.wait(2)
            break
        end
    end
    
    -- Clean up the UI
    testGui:Destroy()
end

-- Start the script
task.spawn(runTest)
