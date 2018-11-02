.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.super Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
    }
.end annotation


# static fields
.field private static final FLUSH_RESOURCE_CACHES_ON_NIGHT_CHANGE:Z = true

.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"


# instance fields
.field private mApplyDayNightCalled:Z

.field private mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

.field private mHandleNativeActionModes:Z

.field private mLocalNightMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/oneplus/lib/app/appcompat/AppCompatCallback;)V

    const/16 v0, -0x64

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return-void
.end method

.method private ensureAutoNightModeManager()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/TwilightManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Lcom/oneplus/lib/app/appcompat/TwilightManager;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    :cond_0
    return-void
.end method

.method private getNightMode()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->getDefaultNightMode()I

    move-result v0

    :goto_0
    return v0
.end method

.method private shouldRecreateOnNightModeChange()Z
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/ActivityInfo;->configChanges:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x200

    if-nez v4, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :catch_0
    move-exception v1

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_1
    return v1
.end method

.method private updateForNightMode(I)Z
    .locals 8

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    const/16 v3, 0x20

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    if-eq v2, v3, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v6, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v7, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, -0x31

    or-int/2addr v7, v3

    iput v7, v4, Landroid/content/res/Configuration;->uiMode:I

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v6

    iput v7, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iput v6, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public applyDayNight()Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->getNightMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->updateForNightMode(I)Z

    move-result v0

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v3}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    return v0
.end method

.method final getAutoNightModeManager()Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    return-object v0
.end method

.method public isHandleNativeActionModesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return v0
.end method

.method mapNightMode(I)I
    .locals 1

    const/16 v0, -0x64

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    const-string v0, "appcompat:local_night_mode"

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;->onStart()V

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->applyDayNight()Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV11;->onStop()V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mAutoNightModeManager:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V

    :cond_0
    return-void
.end method

.method public setHandleNativeActionModesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z

    return-void
.end method

.method public setLocalNightMode(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "AppCompatDelegate"

    const-string v1, "setLocalNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mLocalNightMode:I

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->applyDayNight()Z

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V

    return-object v0
.end method
