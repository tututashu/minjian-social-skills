# minjian-social-skills · 民间社交应对 Agent Skills

一组自包含、可直接安装的 Agent Skills（兼容 Claude Skills / WorkBuddy Skills 格式），蒸馏自《中国民间社交通用全书》（广西人民出版社，1990）。

处理那些没人教过、用的时候又抓瞎的场景：跟难缠的人打交道、随份子给多少、给长辈写信怎么开头、婚礼致辞说什么、旧式请帖怎么读、春联挽联怎么选。

## 技能列表

| 目录 | 形式 | 能力 |
|---|---|---|
| `minjian-social` | 路由入口 | 按意图路由到 9 张能力卡，含术语表、全书概览、速查表 |
| `minjian-person-strategies` | 独立技能 | 识类→选策略→守底线：对 24 类难处之人的应对法、证据链识人、止损判停 |
| `minjian-conversation-skills` | 独立技能 | 交谈八守则、对象×话题匹配、冷场救急、提意见不伤人 |
| `minjian-social-etiquette` | 独立技能 | 份子公价、回访时限、探病分级、介绍次序、送礼规矩等定量礼俗 |
| `minjian-letter-formulas` | 独立技能 | 书信套语七语类查表：提称语、启事语、疏候语、具名分级、信封启缄字 |
| `minjian-ceremony-speeches` | 独立技能 | 婚礼训词/证婚词、祝寿词、悼词：先定角色再定文体 |

只想要一个入口的话，装 `minjian-social` 即可（它内部包含全部 9 张能力卡，含丧仪文书、柬帖体例、楹联选用、募捐启事 4 张未独立发布的卡）。

## 安装

### 一句话安装（macOS / Linux）

```bash
curl -fsSL https://raw.githubusercontent.com/tututashu/minjian-social-skills/main/install.sh | bash
```

自动探测已存在的 `~/.claude/skills` 或 `~/.workbuddy/skills` 并安装全部 6 个技能；想指定目录：`TARGET_DIR=~/.claude/skills bash install.sh`。

### 手动安装

把技能目录复制到对应 skills 目录：
- **WorkBuddy**：`~/.workbuddy/skills/`
- **Claude Code / Claude Desktop**：`~/.claude/skills/`（或项目 `.claude/skills/`）

## 使用示例

- 「用民间社交应对：跟势利的亲戚打交道躲不掉怎么办」
- 「给大学老师写一封久未联系的信，开头怎么写」
- 「朋友结婚随份子，关系一般，给多少合适」
- 「婚礼上父亲致辞要讲什么」
- 「读不懂这张旧式讣帖，孤哀子是什么意思」

## 版权与来源声明

- 本仓库**不含原书任何逐字全文**。全部内容为方法与结构的提炼转述，单处原文引用不超过 150 字并附出处（章·节·页）。
- 原书《中国民间社交通用全书》（1990）版权归原作者及出版社所有；楹联部分多为已进入公有领域的古代名人联与传统民间联。
- 制作流程：OCR（macOS Vision，三版投票校准）→ 仓颉流水线蒸馏（提取→三重验证→晋级→RIA 能力卡→压力测试→编译）。

## 边界

技能内置了硬边界：不提供法律文书（合同/遗嘱/诉状）起草、不提供操纵报复话术、不替代专业心理/法律/投资建议。

## License

MIT（仓库内技能文本部分）。原书内容的版权状态见上文声明。
