.class public Lcom/android/server/OemSceneButtonController;
.super Ljava/lang/Object;
.source "OemSceneButtonController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;,
        Lcom/android/server/OemSceneButtonController$KeyLockMode;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

.field private static final URI_GAME_BTN_SETTING:Landroid/net/Uri;

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/android/server/OemSceneButtonController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

.field private mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

.field private mHandler:Landroid/os/Handler;

.field protected mIsFunctionOn:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    const-string v0, "game_mode_lock_buttons"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    const-string/jumbo v0, "temp_disable_scene_button_lcok_feature"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OemSceneButtonController"

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneButtonController;->mIsFunctionOn:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "temp_disable_scene_button_lcok_feature"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneButtonController$1;-><init>(Lcom/android/server/OemSceneButtonController;)V

    const-class v3, Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneButtonController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    return v0
.end method

.method private getGameButtonFeatureDisabled()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "temp_disable_scene_button_lcok_feature"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameButtonSetting()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneButtonController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    return-object v0
.end method

.method private getOnScreenNaviBarEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_show_on_screen_navkeys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private setKeyMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnable(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getOnScreenNaviBarEnable()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] onScreenNaviBarEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->BACK_SWITCH:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    :goto_0
    return-void
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    return v0
.end method

.method public updateFunctionRule(I)V
    .locals 4

    :try_start_0
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] game_mode_button_locked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsButtonLockFeatureDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    if-eq v0, p1, :cond_3

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] removeFuncRule for blocking key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_KeyBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFunctionRule error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput p1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    return-void
.end method
