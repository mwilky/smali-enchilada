.class public Landroid/view/DisplayAdjustments;
.super Ljava/lang/Object;
.source "DisplayAdjustments.java"


# static fields
.field public static final DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;


# instance fields
.field private volatile mCompatInfo:Landroid/content/res/CompatibilityInfo;

.field private mConfiguration:Landroid/content/res/Configuration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0}, Landroid/view/DisplayAdjustments;-><init>()V

    sput-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    new-instance v0, Landroid/content/res/Configuration;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAdjustments;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v0, p1, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p0, v0}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/view/DisplayAdjustments;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/DisplayAdjustments;

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isScalingRequired()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    iput-object v0, p0, Landroid/view/DisplayAdjustments;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setCompatbilityInfo: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Landroid/view/DisplayAdjustments;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "setConfiguration: Cannot modify DEFAULT_DISPLAY_ADJUSTMENTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
