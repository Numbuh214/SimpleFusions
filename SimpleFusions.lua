--- STEAMODDED HEADER
--- MOD_NAME: Simple Fusions
--- MOD_ID: SimpleFusions
--- MOD_AUTHOR: [Numbuh214]
--- PREFIX: fused
--- MOD_DESCRIPTION: Adds fused Jokers to the game, encountered via owning two compatible Jokers.

----------------------------------------------
------------MOD CODE -------------------------


    materials = {
        { "Smiley Face", "Scary Face", "creepy" },
        { "Lusty Joker", "Bloodstone", "bloody" },
        { "Gluttonous Joker", "Onyx Agate", 'famished'},
        { "Greedy Joker", "Rough Gem", 'mogul'},
        { "Wrathful Joker", "Arrowhead", 'warlord' },
        { "Odd Todd", "Even Steven", 'numbros' },
        { "Crazy Joker", "Devious Joker", 'cunning' },
        { "Jolly Joker", "Sly Joker", 'wry' },
        { "Wily Joker", "Zany Joker", 'silly' },
        { "Mad Joker", "Clever Joker", 'kooky' },
        { "Crafty Joker", "Droll Joker", 'loopy' },
    }
    fusedJokers = {
        {
            key = 'creepy',
            name = "Creepy Face",
            text = {
                    "Played {C:attention}face cards{}",
                    "give {C:chips}+#1# {}Chips",
                    "and {C:mult}+#2# {}Mult",
                    "when scored"
                },
            rarity = 1,
            cost = 8,
            config = {
              bonus = 30,
              mult = 5
            },
            vars = {
              "bonus",
              "mult",
            }
        },
        {
            key = 'bloody',
            name = "Bloody Joker",
            text = {
                    "Played {C:hearts}Hearts cards{}",
                    "give {C:mult}+#1#{} Mult and have",
                    "a {C:green}#2# in #3#{} chance to give",
                    "{X:mult,C:white} X#4# {} mult when scored"
                },
            rarity = 2,
            cost = 12,
            effect = "Suit Mult",
            config = {
              x_mult = 1.5,
              odds = 2,
              extra = {
                s_mult = 3,
                suit = 'Hearts'
              }
            },
            vars = {
              "s_mult",
              "odds",
              "x_mult",
            }
        },
        {
            key = 'famished',
            name = "Famished Joker",
            text = {
                    "Played {C:clubs}Clubs cards{} give",
                    "{C:mult}+#1#{} Mult when scored"
                },
            rarity = 2,
            cost = 12,
            effect = "Suit Mult",
            config = {
              extra = {
                s_mult = 10,
                suit = 'Clubs'
              }
            },
            vars = {
              "s_mult",
            }
        },
        {
            key = 'mogul',
            name = "Mogul Joker",
            text = {
                    "Played {C:diamonds}Diamond cards{}",
                    "give {C:mult}+#2#{} Mult and earn",
                    "{C:money}$#1#{} when scored"
                },
            rarity = 2,
            cost = 12,
            effect = "Suit Mult",
            config = {
              extra = {
                money = 1,
                s_mult = 3,
                suit = 'Diamonds'
              }
            },
            vars = {
              "money",
              "s_mult",
            }
        },
        {
            key = 'warlord',
            name = "Warlord Joker",
            text = {
                    "Played {C:spades}Spades cards{}",
                    "give {C:chips}+#1#{} Chips and",
                    "{C:mult}+#2#{} Mult when scored"
                },
            rarity = 2,
            cost = 12,
            effect = "Suit Mult",
            config = {
              bonus = 50,
              extra = {
                s_mult = 3,
                suit = 'Spades'
              }
            },
            vars = {
              "bonus",
              "s_mult",
            }
        },
        {
            key = 'numbros',
            name = "The NumBros.",
            text = {
                    "Played {C:attention} number cards{} give",
                    "give {C:chips}+#1#{} Chips if odd and",
                    "{C:mult}+#2#{} Mult if even when scored"
                },
            rarity = 1,
            cost = 8,
            config = {
              bonus = 31,
              mult = 4,
            },
            vars = {
              "bonus",
              "mult",
            }
        },
        {
            key = 'wry',
            name = "Wry Joker",
            text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "a {C:attention}#3#",
                },
            rarity = 1,
            cost = 12,
            effect = "Type Mult",
            config = {
              t_bonus = 50,
              extra = {
                t_mult = 8,
                type = 'Pair'
              }
            },
            vars = {
              "t_bonus",
              "t_mult",
              "type",
            }
        },
        {
            key = 'silly',
            name = "Silly Joker",
            text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "a {C:attention}#3#",
                },
            rarity = 1,
            cost = 12,
            effect = "Type Mult",
            config = {
              t_bonus = 100,
              extra = {
                t_mult = 12,
                type = 'Three of a Kind'
              }
            },
            vars = {
              "t_bonus",
              "t_mult",
              "type",
            }
        },
        {
            key = 'kooky',
            name = "Kooky Joker",
            text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "a {C:attention}#3#",
                },
            rarity = 1,
            cost = 12,
            effect = "Type Mult",
            config = {
              t_bonus = 80,
              extra = {
                t_mult = 10,
                type = 'Two Pair'
              }
            },
            vars = {
              "t_bonus",
              "t_mult",
              "type",
            }
        },
        {
            key = 'loopy',
            name = "Loopy Joker",
            text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "a {C:attention}#3#",
                },
            rarity = 1,
            cost = 12,
            effect = "Type Mult",
            config = {
              t_bonus = 80,
              extra = {
                t_mult = 10,
                type = 'Flush'
              }
            },
            vars = {
              "t_bonus",
              "t_mult",
              "type",
            }
        },
        {
            key = 'cunning',
            name = "Cunning Joker",
            text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "if played hand contains",
                    "a {C:attention}#3#",
                },
            rarity = 1,
            cost = 12,
            effect = "Type Mult",
            config = {
              t_bonus = 100,
              extra = {
                t_mult = 12,
                type = 'Straight'
              }
            },
            vars = {
              "t_bonus",
              "t_mult",
              "type",
            }
        },
    }
    SMODS.Atlas{
      key = "Jokers_Fusion",
      path = "Jokers_Fusion.png",
      px = 71,
      py = 95
    }
    for k,v in pairs(fusedJokers) do
      SMODS.Joker{
        key = v.key,
        atlas = "Jokers_Fusion",
        set = "Joker",
        name = v.name,
        rarity = v.rarity,
        cost = v.cost,
        config = v.config,
        blueprint_compat = v.blueprint or true,
        eternal_compat = v.eternal or true,
        perishable_compat = v.perishable or true,
        loc_txt = {
          name = v.name,
          text = v.text
        },
        in_pool = function(self, args)
          return false
        end
        discovered = true,
        unlocked = true,
        pos = {x=(k-1)%10,y=math.floor((k-1)/10)},
        calculate = v.calculate,
        loc_vars = (type(v.vars) == "function") and v.vars or function(self, info_queue, card)
          local postage = {}
          sendDebugMessage("Card Debug")
          for key, val in pairs(self) do
            sendDebugMessage(key..":"..tostring(val))
          end
          for key, val in pairs(v.vars) do
            if type(self.config[val]) == 'nil' and type(self.config.extra) ~= 'nil' then
              if string.sub(val,1,4) == "odds" then
                postage[#postage+1] = G.GAME.probabilities.normal
                postage[#postage+1] = self.config.extra[val]
                --sendDebugMessage(val..": "..G.GAME.probabilities.normal.." in "..tostring(postage[key]))
              else
                postage[#postage+1] = self.config.extra[val]
                --sendDebugMessage(val..": "..tostring(postage[key]))
              end
            elseif string.sub(val,1,4) == "odds" then
              postage[#postage+1] = G.GAME.probabilities.normal
              postage[#postage+1] = self.config[val]
              --sendDebugMessage(val..": "..G.GAME.probabilities.normal.." in "..tostring(postage[key]))
            else
              postage[#postage+1] = self.config[val]
              --sendDebugMessage(val..": "..tostring(postage[key]))
            end
          end
          return {vars = postage}
        end,
      }
    end

function format_debug(t,i)
    local indent = ""
    for a = 0, i do
      indent = indent.." "
    end
    for k, v in pairs(t) do
      if type(v) == "table" then
        sendDebugMessage(indent..k..": ")
        format_debug(v,i+1)
      else
        sendDebugMessage(indent..k..": "..tostring(v))
      end
    end
end

local check_for_buy_spaceref = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
  for j = 1, #materials do
    for i = 1, #G.jokers.cards do
      sendDebugMessage("Can "..card.ability.name.." fuse with "..G.jokers.cards[i].ability.name.."...?")
      if (card.ability.name == materials[j][1] and G.jokers.cards[i].ability.name == materials[j][2]) or
         (card.ability.name == materials[j][2] and G.jokers.cards[i].ability.name == materials[j][1]) then
        sendDebugMessage("Yes...?")
        return true
      end
    end
  end
  local postage = check_for_buy_spaceref(card)
  sendDebugMessage("No, "..(postage and "but " or "and ")..card.ability.name.." can"..(postage and " " or "not ").."be bought"..(postage and "." or " still."))
  return postage
end

local calculate_jokerref = Card.calculate_joker
function Card:calculate_joker(context)
    --sendDebugMessage(self.ability.name)
    local calc_ref = calculate_jokerref(self, context)
    if context.buying_card then
        if (not self.dissolve) then
            for j = 1, #materials do
                for i = 1, #G.jokers.cards do
                    if (self.ability.name == materials[j][1] and G.jokers.cards[i].ability.name == materials[j][2]) or
                       (self.ability.name == materials[j][2] and G.jokers.cards[i].ability.name == materials[j][1]) then
                        sendDebugMessage("Should be fusing j_fused_"..materials[j][3])
                        NumbuhFusion_fuse_cards(self, G.jokers.cards[i], materials[j][3])
                        return calc_ref
                    end
                end
            end
        end
    elseif context.individual then
      if context.cardarea == G.play then
        if self.ability.name == 'Creepy Face' and (
        context.other_card:is_face()) then
            return {
                chips = self.ability.bonus,
                mult = self.ability.mult,
                card = self
            }
        end
        if self.ability.name ==  'Bloody Joker' and
        context.other_card:is_suit("Hearts") then
            if pseudorandom('bloodstone') < G.GAME.probabilities.normal/self.ability.odds then
                return {
                    mult = self.ability.extra.s_mult,
                    x_mult = self.ability.x_mult,
                    card = self
                }
            else
                return nil
            end
        end
        if self.ability.name == 'Mogul Joker' and
        context.other_card:is_suit("Diamonds") then
          G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + self.ability.extra.money
          G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
          return {
            mult = self.ability.extra.s_mult,
            dollars = self.ability.extra.money,
            card = self
          }
        end
        if self.ability.name ==  'Warlord Joker' and
        context.other_card:is_suit("Spades") then
            return {
                mult = self.ability.extra.s_mult,
                chips = self.ability.bonus,
                card = self
            }
        end
        if self.ability.name ==  'Famished Joker' and
        context.other_card:is_suit("Clubs") then
            return {
                mult = self.ability.extra.s_mult,
                card = self
            }
        end
        if self.ability.name ==  'The NumBros.' then
          print_table(context.other_card.base.name.." ("..context.other_card.ability.effect..") has a face value of "..context.other_card.base.face_nominal)
          if (context.other_card.base.face_nominal == 0) then
            local number = (context.other_card.base.value) == "Ace" and 1 or tonumber(context.other_card.base.value)
            if (number % 2 == 1) then
              sendDebugMessage(context.other_card.base.name.." is odd, should give "..tostring(self.ability.bonus).." Chips")
              return {
                bonus = self.ability.bonus,
                card = self
              }
            else
              sendDebugMessage(context.other_card.base.name.." is even, should give "..tostring(self.ability.mult).." Mult")
              return {
                mult = self.ability.mult,
                card = self
              }
            end
          end
        end
      end
    elseif (context.joker_main and context.cardarea == G.jokers) then
      if self.config.center.config.t_bonus ~= nil and self.ability.effect ==  'Type Mult' then
        local bonus = self.config.center.config.t_bonus
        local tmult = self.config.center.config.extra.t_mult
        sendDebugMessage(self.ability.name.." needs a "..self.ability.extra.type)
        if next(context.poker_hands[self.ability.extra.type]) then
          sendDebugMessage("Hand contains a "..self.ability.extra.type)
          G.E_MANAGER:add_event(Event({
            trigger = 'before',
            delay = 0.7,
            func = function()
              card_eval_status_text(self, 'chips', bonus, nil, nil, {message = localize{type='variable',key='a_chips',vars={bonus}},instant=true})
              update_hand_text({immediate = true, delay = 0}, {chips = G.GAME.current_round.current_hand.chip_text + bonus})
              return true
            end
          }))
          return {
            message = localize{type='variable',key='a_mult',vars={tmult}},
            chip_mod = bonus,
            mult_mod = tmult,
            card = self
          }
        end
      end
    end
    return calc_ref
end
  
function NumbuhFusion_fuse_cards(card1, card2, fusion)
    local fusion_edition = nil
    local j_fusion = SMODS.add_card{key="j_fused_"..fusion, area=G.jokers}
    if card1.edition or card2.edition then
      if not card1.edition and card2.edition then
        card1:set_edition(card2.edition,true,true)
      elseif not card2.edition and card1.edition then
        card2:set_edition(card1.edition,true,true)
      end
      sendDebugMessage(card1.edition.type.." & "..card2.edition.type)
      if card1.edition.type == 'negative' or card2.edition.type == 'negative' then
        fusion_edition = {negative = true}
      elseif card1.edition.type == 'polychrome' or card2.edition.type == 'polychrome' then
        fusion_edition = {polychrome = true}
      elseif card1.edition.type == 'holo' or card2.edition.type == 'holo' then
        fusion_edition = {holo = true}
      elseif card1.edition.type == 'foil' or card2.edition.type == 'foil' then
        fusion_edition = {foil = true}
      end
    end
    j_fusion:set_edition(fusion_edition, true, true)
    
    if card1.ability.eternal or card2.ability.eternal then
      j_fusion.ability.eternal = true
      card1.ability.eternal = false
      card2.ability.eternal = false
    end    
    if card1.ability.perishable or card2.ability.perishable then
      j_fusion.ability.perishable = true
      card1.ability.perishable = false
      card2.ability.perishable = false
    end    
    if card1.ability.rental or card2.ability.rental then
      j_fusion.ability.rental = true
      card1.ability.rental = false
      card2.ability.rental = false
    end
    card1:start_dissolve()
    card2:start_dissolve()
end
----------------------------------------------
------------MOD CODE END----------------------
