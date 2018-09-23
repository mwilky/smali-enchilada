.class final Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowingModeTransitionInfo"
.end annotation


# instance fields
.field private bindApplicationDelayMs:I

.field private currentTransitionProcessRunning:Z

.field private launchedActivity:Lcom/android/server/am/ActivityRecord;

.field private loggedStartingWindowDrawn:Z

.field private loggedWindowsDrawn:Z

.field private reason:I

.field private startResult:I

.field private startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private windowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startResult:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->launchedActivity:Lcom/android/server/am/ActivityRecord;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedWindowsDrawn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->loggedStartingWindowDrawn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->reason:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->startingWindowDelayMs:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->bindApplicationDelayMs:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->windowsDrawnDelayMs:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->currentTransitionProcessRunning:Z

    return p1
.end method
