alias Onicn.Critters.GlomSpecies

defmodule GlomSpecies do
  use Onicn.Categories.Critter, [
    GlomSpecies.Glom
  ]

  section "简介" do
    "疫病章鱼是一种小动物，自然生成于丛林生态和长时间没有清空的户外厕所。满足一定条件时，疫病章鱼会排放出带有少量粘液肺病病菌的污染氧。"

    "疫病章鱼不能被驯化，但可以被小动物陷阱捕捉并运送到小动物放生点。它没有寿命上限，不会自然死亡，在受到复制人攻击时会尝试逃离（状态栏中会显示“逃离”）。疫病章鱼没有对应的小动物蛋，也不会像其它小动物一样受到各种状态（如狭窄、过度拥挤等）的影响。"

    "它们可能会被淹死，也可能被掩埋窒息而死或被复制人攻击而死。"
  end

  section "排放机制" do
    "疫病章鱼每次会排放 200 克的污染氧。只有在当前位置满足一定条件时，疫病章鱼才会排放污染氧："
    "疫病章鱼目前是静止状态（不能一边运动一边排放污染氧）；"
    "当前所处方格不是液体或真空方格，且气压低于 1000 克；"
    "另外，如果其上方两格的位置来源请求没有被砖块遮挡，那么疫病章鱼在排放污染氧时会显示动画。"
  end

  section "小技巧" do
    "疫病章鱼和喷浮飞鱼搭配可以用于再生菌泥。"
    "一个未清空的户外厕所每次只能生成一只疫病章鱼。但是可以通过保存再加载游戏（或禁用后启用户外厕所）来使其产生任意多的疫病章鱼（虽然可能需要一点时间）。"
    "疫病章鱼可以用于生产污染氧。为了最大化污染氧生产速率，建议使用以下技巧："
    "建造一个宽 5 高 1 的“房间”——过窄的房间会导致产量减少来源请求；"
    "充入少量比污染氧更重的气体（如二氧化碳），这样当其沉降在底部时可以保证疫病章鱼不会因超压而停止排放；"
    "使用此种方法时，应当将上述房间的天花板替换成透气砖或网格砖，并在上方抽取污染氧，以防抽入二氧化碳。"
  end
end

defmodule GlomSpecies.Glom do
  use GlomSpecies,
    cn_name: "疫病章鱼",
    en_name: "Morb"
end
