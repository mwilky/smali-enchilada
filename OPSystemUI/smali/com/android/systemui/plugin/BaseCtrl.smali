.class public abstract Lcom/android/systemui/plugin/BaseCtrl;
.super Ljava/lang/Object;
.source "BaseCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;

.field protected mContext:Landroid/content/Context;

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/BaseCtrl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 0

    return-void
.end method

.method public onDreamingStopped()V
    .locals 0

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public abstract onStartCtrl()V
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/BaseCtrl;->mCallback:Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;

    return-void
.end method

.method public startCtrl()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/BaseCtrl;->mStarted:Z

    invoke-virtual {p0}, Lcom/android/systemui/plugin/BaseCtrl;->onStartCtrl()V

    return-void
.end method
