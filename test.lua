meta.name = "test"
meta.author = "Estebanfer"
meta.version = "1.0"
meta.description = "testing"

local types = get_entities_by_type(ENT_TYPE.MOUNT_TURKEY)

for _, uid in ipairs(types) do
    ---@type Mount
    local ent = get_entity(uid)
    ent:tame()
end
players[1].inventory.bombs = 5
---@param ctx VanillaRenderContext
set_callback(function(ctx)
    local p_hitbox = get_hitbox(players[1].uid)
    ctx:draw_world_texture(TEXTURE.DATA_TEXTURES_ITEMS_0, 1, 1, p_hitbox, Color:white())
end, ON.RENDER_PRE_HUD)

local aabb = AABB:new()
local height = aabb:height()