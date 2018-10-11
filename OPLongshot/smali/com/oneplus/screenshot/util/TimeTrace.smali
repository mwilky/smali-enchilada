.class public Lcom/oneplus/screenshot/util/TimeTrace;
.super Ljava/lang/Object;
.source "TimeTrace.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mLast:J

.field private static mMarkLast:J

.field private static mMarkStart:J

.field private static mStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/oneplus/screenshot/util/TimeTrace;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/util/TimeTrace;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public static mark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    sget-wide v1, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v1, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    sub-long v10, v8, v1

    sput-wide v8, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v10

    move-wide v6, v8

    invoke-static/range {v2 .. v7}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public static reset()V
    .locals 0

    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->set()V

    return-void
.end method

.method private static set()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mLast:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkStart:J

    sget-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mStart:J

    sput-wide v0, Lcom/oneplus/screenshot/util/TimeTrace;->mMarkLast:J

    return-void
.end method

.method public static start()V
    .locals 0

    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->set()V

    return-void
.end method

.method public static stop()V
    .locals 0

    invoke-static {}, Lcom/oneplus/screenshot/util/TimeTrace;->clear()V

    return-void
.end method
