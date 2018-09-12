.class public Lcom/oneplus/aod/clock/OPAnalogClock;
.super Landroid/widget/RelativeLayout;
.source "OPAnalogClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V

    .line 38
    return-void
.end method

.method private init()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->refreshTime()V

    .line 55
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method public refreshTime()V
    .locals 8

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "time":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "splitString":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 65
    .local v3, "hour":I
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, "min":I
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    const v6, 0x7f07005f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    const v6, 0x7f070060

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    const/16 v5, 0x168

    mul-int v6, v5, v3

    div-int/lit8 v6, v6, 0xc

    const/16 v7, 0x1e

    mul-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 73
    .local v6, "hourAngle":F
    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    .line 74
    .local v5, "minAngle":F
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 75
    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setRotation(F)V

    .line 77
    return-void
.end method
