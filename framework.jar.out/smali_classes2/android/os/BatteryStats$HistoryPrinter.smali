.class public Landroid/os/BatteryStats$HistoryPrinter;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistoryPrinter"
.end annotation


# instance fields
.field lastTime:J

.field oldChargeMAh:I

.field oldHealth:I

.field oldLevel:I

.field oldPlug:I

.field oldState:I

.field oldState2:I

.field oldStatus:I

.field oldTemp:I

.field oldVolt:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    return-void
.end method

.method private printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x9

    const/16 v8, 0x2c

    if-nez p4, :cond_0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v1, p2

    const/16 v3, 0x13

    invoke-static {v1, v2, v0, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->numReadInts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iget-wide v3, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->lastTime:J

    :goto_1
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    if-eqz p4, :cond_2

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "START\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    goto/16 :goto_27

    :cond_3
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    const/4 v4, 0x7

    if-eq v1, v3, :cond_46

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v1, v4, :cond_4

    goto/16 :goto_26

    :cond_4
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v1, v3, :cond_6

    if-eqz p4, :cond_5

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "SHUTDOWN\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :cond_6
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x6

    if-ne v1, v3, :cond_8

    if-eqz p4, :cond_7

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "*OVERFLOW*\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_27

    :cond_8
    if-nez p4, :cond_13

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0xa

    if-ge v1, v3, :cond_9

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    const/16 v3, 0x64

    if-ge v1, v3, :cond_a

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_14

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    if-gez v1, :cond_b

    goto :goto_3

    :cond_b
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x10

    if-ge v1, v3, :cond_c

    const-string v1, "0000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_c
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x100

    if-ge v1, v3, :cond_d

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/16 v3, 0x1000

    if-ge v1, v3, :cond_e

    const-string v1, "00000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_e
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_f

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_f
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x100000

    if-ge v1, v3, :cond_10

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_10
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000000

    if-ge v1, v3, :cond_11

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_11
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10000000

    if-ge v1, v3, :cond_12

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    :goto_3
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iget-byte v3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-eq v1, v3, :cond_14

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    const-string v1, ",Bl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    :goto_4
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iget-byte v3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    if-eq v1, v3, :cond_1b

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    if-eqz p4, :cond_15

    const-string v1, ",Bs="

    goto :goto_5

    :cond_15
    const-string v1, " status="

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_0
    if-eqz p4, :cond_16

    const-string v1, "f"

    goto :goto_6

    :cond_16
    const-string v1, "full"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_1
    if-eqz p4, :cond_17

    const-string/jumbo v1, "n"

    goto :goto_7

    :cond_17
    const-string/jumbo v1, "not-charging"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_2
    if-eqz p4, :cond_18

    const-string v1, "d"

    goto :goto_8

    :cond_18
    const-string v1, "discharging"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_3
    if-eqz p4, :cond_19

    const-string v1, "c"

    goto :goto_9

    :cond_19
    const-string v1, "charging"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_4
    if-eqz p4, :cond_1a

    const-string v1, "?"

    goto :goto_a

    :cond_1a
    const-string/jumbo v1, "unknown"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_1b
    :goto_b
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iget-byte v3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    if-eq v1, v3, :cond_24

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    if-eqz p4, :cond_1c

    const-string v1, ",Bh="

    goto :goto_c

    :cond_1c
    const-string v1, " health="

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    packed-switch v1, :pswitch_data_1

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_5
    if-eqz p4, :cond_1d

    const-string v1, "c"

    goto :goto_d

    :cond_1d
    const-string v1, "cold"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_6
    if-eqz p4, :cond_1e

    const-string v1, "f"

    goto :goto_e

    :cond_1e
    const-string v1, "failure"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_7
    if-eqz p4, :cond_1f

    const-string/jumbo v1, "v"

    goto :goto_f

    :cond_1f
    const-string/jumbo v1, "over-voltage"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_8
    if-eqz p4, :cond_20

    const-string v1, "d"

    goto :goto_10

    :cond_20
    const-string v1, "dead"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_9
    if-eqz p4, :cond_21

    const-string v1, "h"

    goto :goto_11

    :cond_21
    const-string/jumbo v1, "overheat"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_a
    if-eqz p4, :cond_22

    const-string v1, "g"

    goto :goto_12

    :cond_22
    const-string v1, "good"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :pswitch_b
    if-eqz p4, :cond_23

    const-string v1, "?"

    goto :goto_13

    :cond_23
    const-string/jumbo v1, "unknown"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_24
    :goto_14
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iget-byte v3, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    if-eq v1, v3, :cond_2b

    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eqz p4, :cond_25

    const-string v1, ",Bp="

    goto :goto_15

    :cond_25
    const-string v1, " plug="

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    if-eq v1, v2, :cond_29

    packed-switch v1, :pswitch_data_2

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_c
    if-eqz p4, :cond_26

    const-string/jumbo v1, "u"

    goto :goto_16

    :cond_26
    const-string/jumbo v1, "usb"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_d
    if-eqz p4, :cond_27

    const-string v1, "a"

    goto :goto_17

    :cond_27
    const-string v1, "ac"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :pswitch_e
    if-eqz p4, :cond_28

    const-string/jumbo v1, "n"

    goto :goto_18

    :cond_28
    const-string/jumbo v1, "none"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_29
    if-eqz p4, :cond_2a

    const-string/jumbo v1, "w"

    goto :goto_19

    :cond_2a
    const-string/jumbo v1, "wireless"

    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :cond_2b
    :goto_1a
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iget-short v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    if-eq v1, v2, :cond_2d

    iget-short v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    if-eqz p4, :cond_2c

    const-string v1, ",Bt="

    goto :goto_1b

    :cond_2c
    const-string v1, " temp="

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2d
    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iget-char v2, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    if-eq v1, v2, :cond_2f

    iget-char v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    if-eqz p4, :cond_2e

    const-string v1, ",Bv="

    goto :goto_1c

    :cond_2e
    const-string v1, " volt="

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2f
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->batteryChargeUAh:I

    div-int/lit16 v9, v1, 0x3e8

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eq v1, v9, :cond_31

    iput v9, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    if-eqz p4, :cond_30

    const-string v1, ",Bcc="

    goto :goto_1d

    :cond_30
    const-string v1, " charge="

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_31
    iget v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v3, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    sget-object v5, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v6, p4, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget v2, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iget v3, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/4 v4, 0x0

    sget-object v5, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    xor-int/lit8 v6, p4, 0x1

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    if-eqz v1, :cond_33

    if-eqz p4, :cond_32

    const-string v1, ",wr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_32
    const-string v1, " wake_reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget v1, v1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    :goto_1e
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    if-eqz v1, :cond_3b

    if-eqz p4, :cond_34

    const-string v1, ","

    goto :goto_1f

    :cond_34
    const-string v1, " "

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_35

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_35
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_36

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    :goto_20
    if-eqz p4, :cond_37

    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    goto :goto_21

    :cond_37
    sget-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    :goto_21
    iget v2, p1, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    const v3, -0xc001

    and-int/2addr v2, v3

    if-ltz v2, :cond_38

    array-length v3, v1

    if-ge v2, v3, :cond_38

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_38
    if-eqz p4, :cond_39

    const-string v3, "Ev"

    goto :goto_22

    :cond_39
    const-string v3, "event"

    :goto_22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_23
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3a

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v3, v3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_3a
    sget-object v3, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    aget-object v3, v3, v2

    iget-object v4, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget v4, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-interface {v3, v4}, Landroid/os/BatteryStats$IntToString;->applyAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    :goto_24
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    if-eqz v1, :cond_45

    if-nez p4, :cond_40

    const-string v1, "                 Details: cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "u+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v1, :cond_3e

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v1, :cond_3c

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_3c
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v1, :cond_3d

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V

    :cond_3d
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3e
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "                          /proc/stat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " usr, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sys, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " io, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " irq, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sirq, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    add-int/2addr v1, v2

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    add-int/2addr v1, v2

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    add-int/2addr v1, v2

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    add-int/2addr v1, v2

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    add-int/2addr v2, v1

    if-lez v2, :cond_3f

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    const-string v4, "%.1f%%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    mul-int/lit8 v5, v2, 0xa

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    const-string v3, ", PlatformIdleStat "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SubsystemPowerState "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    :cond_40
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",0,Dcpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->userTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->systemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    if-ltz v1, :cond_42

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid1:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime1:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime1:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    if-ltz v1, :cond_41

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid2:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime2:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime2:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_41
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    if-ltz v1, :cond_42

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUid3:I

    iget-object v2, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v2, v2, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuUTime3:I

    iget-object v3, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v3, v3, Landroid/os/BatteryStats$HistoryStepDetails;->appCpuSTime3:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/BatteryStats$HistoryPrinter;->printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V

    :cond_42
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",0,Dpst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statUserTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSystemTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIOWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIrqTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSoftIrqTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statIdlTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statPlatformIdleState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v1, :cond_43

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_43
    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    if-eqz v1, :cond_44

    iget-object v1, p1, Landroid/os/BatteryStats$HistoryItem;->stepDetails:Landroid/os/BatteryStats$HistoryStepDetails;

    iget-object v1, v1, Landroid/os/BatteryStats$HistoryStepDetails;->statSubsystemPowerState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    :goto_25
    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    iget v1, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    iput v1, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    goto :goto_27

    :cond_46
    :goto_26
    if-eqz p4, :cond_47

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    iget-byte v1, p1, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v1, v4, :cond_48

    const-string v1, "RESET:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/BatteryStats$HistoryPrinter;->reset()V

    :cond_48
    const-string v1, "TIME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_49

    iget-wide v1, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_49
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v2, p1, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method

.method private printStepCpuUidCheckinDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private printStepCpuUidDetails(Ljava/lang/StringBuilder;III)V
    .locals 1

    invoke-static {p1, p2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "u+"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V
    .locals 7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    const-wide v5, 0x20900000006L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/os/BatteryStats$HistoryItem;JZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState2:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldLevel:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldStatus:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldHealth:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldPlug:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldTemp:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldVolt:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryPrinter;->oldChargeMAh:I

    return-void
.end method
