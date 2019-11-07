init("0", 1)
setScreenScale(1080, 1920)
tap_delay = .5
require("path")
require("util")
cron = require("crontab")
每八小时 = {"限时活动", "邮件", "轮次作战", "基建点击全部",
                "换人", "制造站加速", "制造站补充", "订单交付",
                "线索接收", "信用奖励", "访问好友基建",
                "信用收取", "信用购买", "公开招募聘用",
                "干员强化", "任务", "关闭", "显示全部"}
每日开始 = {"更新开启时间", "限时活动", "作战1-11",
                "基建点击全部", "任务", "关闭", "显示全部"}
show("开始")
tick = 0
fight_type_ext = {"PR-A-2", "PR-B-2", "PR-C-2", "PR-D-2"}
fight_type_ext = {"LS-5", "CA-5", "AP-5", "龙门市区"}
insert(fight_type_ext, "CE-5")
repeat_last(fight_type_ext, 500)
fight_type = fight_type_ext
table.shuffle(fight_type)
now("线索接收")
cron(map(hc, {{每日开始, 4}, {每八小时, "2,10,18"}}))
