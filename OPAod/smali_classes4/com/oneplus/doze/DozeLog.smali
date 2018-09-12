.class public Lcom/oneplus/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z = true

.field static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PULSE_REASONS:I = 0x8

.field public static final PULSE_REASON_DISPLAY_ALWAYS_ON:I = 0x6

.field public static final PULSE_REASON_INTENT:I = 0x0

.field public static final PULSE_REASON_NOTIFICATION:I = 0x1

.field public static final PULSE_REASON_SENSOR_DOUBLE_TAP:I = 0x4

.field public static final PULSE_REASON_SENSOR_PICKUP:I = 0x3

.field public static final PULSE_REASON_SENSOR_SIGMOTION:I = 0x2

.field public static final PULSE_REASON_SINGLE_TAP:I = 0x7

.field public static final PULSE_REASON_THREE_KEY_STATE_CHANGED:I = 0x5

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "DozeLog"

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "DozeLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->DEBUG:Z

    .line 31
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    sput v0, Lcom/oneplus/doze/DozeLog;->SIZE:I

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .line 27
    sget-wide v0, Lcom/oneplus/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 9
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 182
    const-class v0, Lcom/oneplus/doze/DozeLog;

    monitor-enter v0

    .line 183
    :try_start_0
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 184
    :cond_0
    const-string v1, "  Doze log:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    sget v1, Lcom/oneplus/doze/DozeLog;->sPosition:I

    sget v2, Lcom/oneplus/doze/DozeLog;->sCount:I

    sub-int/2addr v1, v2

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    add-int/2addr v1, v2

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    .line 186
    .local v1, "start":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    sget v4, Lcom/oneplus/doze/DozeLog;->sCount:I

    if-ge v3, v4, :cond_1

    .line 187
    add-int v4, v1, v3

    sget v5, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int/2addr v4, v5

    .line 188
    .local v4, "j":I
    const-string v5, "    "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    sget-object v5, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    aget-wide v7, v7, v4

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 191
    sget-object v5, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .end local v4    # "j":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    .end local v3    # "i":I
    :cond_1
    const-string v3, "  Doze summary stats (for "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/oneplus/doze/DozeLog;->sSince:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 195
    const-string v3, "):"

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Pickup pulse (near vibration)"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 197
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Pickup pulse (not near vibration)"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 198
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Notification pulse"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 199
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Screen on (pulsing)"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 200
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Screen on (not pulsing)"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 201
    sget-object v3, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string v4, "Emergency call"

    invoke-virtual {v3, p0, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 202
    move v3, v2

    .restart local v3    # "i":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 203
    invoke-static {v3}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, "reason":Ljava/lang/String;
    sget-object v5, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity near ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 205
    sget-object v5, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proximity far ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 202
    .end local v4    # "reason":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "start":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static init(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 88
    const-class v0, Lcom/oneplus/doze/DozeLog;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 90
    sget v1, Lcom/oneplus/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    .line 91
    sget v1, Lcom/oneplus/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/doze/DozeLog;->sSince:J

    .line 93
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 94
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 95
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 96
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 97
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 98
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v1, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 99
    const/4 v1, 0x2

    const/16 v3, 0x8

    filled-new-array {v3, v1}, [I

    move-result-object v1

    const-class v4, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/oneplus/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 100
    const/4 v1, 0x0

    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 101
    sget-object v5, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    aput-object v6, v5, v1

    .line 102
    sget-object v5, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v5, v5, v4

    new-instance v6, Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-direct {v6, v2}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$1;)V

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 104
    .end local v4    # "i":I
    :cond_0
    const-string v1, "init"

    invoke-static {v1}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 106
    :cond_1
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isInit()Z
    .locals 1

    .line 245
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 5
    .param p0, "msg"    # Ljava/lang/String;

    .line 211
    const-class v0, Lcom/oneplus/doze/DozeLog;

    monitor-enter v0

    .line 212
    :try_start_0
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 213
    :cond_0
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/oneplus/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 214
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/oneplus/doze/DozeLog;->sPosition:I

    aput-object p0, v1, v2

    .line 215
    sget v1, Lcom/oneplus/doze/DozeLog;->sPosition:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int/2addr v1, v2

    sput v1, Lcom/oneplus/doze/DozeLog;->sPosition:I

    .line 216
    sget v1, Lcom/oneplus/doze/DozeLog;->sCount:I

    add-int/lit8 v1, v1, 0x1

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lcom/oneplus/doze/DozeLog;->sCount:I

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    sget-boolean v0, Lcom/oneplus/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_1
    return-void

    .line 217
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static pulseReasonToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pulseReason"    # I

    .line 164
    packed-switch p0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :pswitch_0
    const-string v0, "singleTap"

    return-object v0

    .line 172
    :pswitch_1
    const-string v0, "alwaysOn"

    return-object v0

    .line 170
    :pswitch_2
    const-string v0, "threeKey"

    return-object v0

    .line 169
    :pswitch_3
    const-string v0, "doubletap"

    return-object v0

    .line 168
    :pswitch_4
    const-string v0, "pickup"

    return-object v0

    .line 167
    :pswitch_5
    const-string v0, "sigmotion"

    return-object v0

    .line 166
    :pswitch_6
    const-string v0, "notification"

    return-object v0

    .line 165
    :pswitch_7
    const-string v0, "intent"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dozing"    # Z

    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 112
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dozing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static traceEmergencyCall()V
    .locals 1

    .line 125
    const-string v0, "emergencyCall"

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 127
    return-void
.end method

.method public static traceFling(ZZZZ)V
    .locals 2
    .param p0, "expand"    # Z
    .param p1, "aboveThreshold"    # Z
    .param p2, "thresholdNeeded"    # Z
    .param p3, "screenOnFromTouch"    # Z

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " aboveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " thresholdNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " screenOnFromTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 149
    if-nez p0, :cond_0

    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 152
    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static traceNotificationPulse(Landroid/content/Context;J)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # J

    .line 82
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notificationPulse instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 85
    return-void
.end method

.method public static tracePickupPulse(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "withinVibrationThreshold"    # Z

    .line 62
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pickupPulse withinVibrationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 64
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    goto :goto_0

    .line 65
    :cond_0
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 66
    return-void
.end method

.method public static traceProximityResult(Landroid/content/Context;ZJI)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "near"    # Z
    .param p2, "millis"    # J
    .param p4, "pulseReason"    # I

    .line 157
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "proximityResult reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " millis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v0, v0, p4

    xor-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 161
    return-void
.end method

.method public static tracePulseFinish()V
    .locals 1

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 77
    const-string v0, "pulseFinish"

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2
    .param p0, "reason"    # I

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2
    .param p0, "why"    # I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 137
    sget-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 138
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 139
    return-void
.end method
