.class public Lcom/oneplus/aod/AodMain;
.super Landroid/widget/LinearLayout;
.source "AodMain.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mFirstChangedPosition:Z

.field private mLastRePositionTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 36
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/aod/AodMain;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 42
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Lcom/oneplus/aod/AodMain;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 48
    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/oneplus/aod/AodMain;->init()V

    .line 50
    return-void
.end method

.method private checkPeriod()I
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/oneplus/aod/AodMain;->mFirstChangedPosition:Z

    if-eqz v0, :cond_0

    .line 102
    const v0, 0x493e0

    return v0

    .line 105
    :cond_0
    const v0, 0xdbba0

    return v0
.end method

.method private init()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 54
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mDisplay:Landroid/view/Display;

    .line 55
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 60
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 61
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 62
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 63
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 64
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/clock/ClockViewCtrl;->getClockStyle()I

    move-result v1

    sget v2, Lcom/oneplus/aod/clock/ClockViewCtrl;->CLOCK_CLASSIC:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    .line 66
    invoke-virtual {p0, v3}, Lcom/oneplus/aod/AodMain;->setHorizontalGravity(I)V

    goto :goto_0

    .line 68
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/AodMain;->setHorizontalGravity(I)V

    .line 70
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/aod/AodMain;->mFirstChangedPosition:Z

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/aod/AodMain;->mLastRePositionTime:J

    .line 72
    return-void
.end method

.method public resetPosition()V
    .locals 11

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oneplus/aod/AodMain;->mLastRePositionTime:J

    sub-long/2addr v0, v2

    .line 79
    .local v0, "duration":J
    invoke-direct {p0}, Lcom/oneplus/aod/AodMain;->checkPeriod()I

    move-result v2

    int-to-long v2, v2

    div-long v2, v0, v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/aod/AodMain;->mFirstChangedPosition:Z

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/aod/AodMain;->mLastRePositionTime:J

    .line 85
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 87
    .local v2, "screenHeight":I
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 88
    .local v3, "topGap":I
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->getHeight()I

    move-result v4

    .line 90
    .local v4, "viewHeight":I
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 91
    .local v5, "rand":Ljava/util/Random;
    mul-int/lit8 v6, v3, 0x2

    sub-int v6, v2, v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 93
    .local v6, "newPosition":I
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .local v7, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v8, v3, v6

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 95
    iget-object v8, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetPosition: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, v7}, Lcom/oneplus/aod/AodMain;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    return-void
.end method
