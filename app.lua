tiles = {
    blank = 0,
    right = 1,
    bottom = 2,
    left = 3,
    top = 4,
}

BLANK = 0;
RIGHT = 1;
BOTTOM = 2;
LEFT = 3;
TOP = 4;
UNDRAW = 5;
 
DIMENSION = 2;

grid = {}
function grid.getCellWithLeastEntropy()
    leastIndex = 0;
    lastLeastValue = #grid[1].options;
    for index = 1, #grid do
        cell = grid[index];
        if lastLeastValue > #cell.options then
            leastIndex = index
            lastLeastValue = #cell.options
        end
    end

    return leastIndex;
end
-- function init
function _init()
    for i = 0, DIMENSION*DIMENSION do
        add(grid, {
            collapsed = false,
            options = {BLANK, RIGHT, LEFT, BOTTOM, TOP}
        })
    end
end

function _update()
    -- cls()

    -- get the element with least entropy
    -- newGrid = grid;



    -- for x = 1, DIMENSION do
    --     for y = 1, DIMENSION do
    --         cell = grid[x*y]
    --         if cell.collapsed == false then
    --             spr(UNDRAW, x*8, y*8);
    --         else
    --             spr(cell.options[1], x*8, y*8);
    --         end
    --     end
    -- end
end

