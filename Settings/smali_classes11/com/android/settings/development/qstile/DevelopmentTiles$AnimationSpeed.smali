.class public Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationSpeed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 4

    .line 124
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 126
    .local v0, "wm":Landroid/view/IWindowManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    return v1
.end method

.method protected setIsEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .line 133
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 134
    .local v0, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    .local v1, "scale":F
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 137
    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V

    .line 138
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_1

    :catch_0
    move-exception v2

    .line 140
    :goto_1
    return-void
.end method