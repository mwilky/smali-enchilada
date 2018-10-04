.class public Lcom/oneplus/util/OemSceneModeUtils;
.super Ljava/lang/Object;
.source "OemSceneModeUtils.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final CLICK_TIMEOUT:J = 0x3e8L

.field private static final CMD_CLICK_INCALL:I = 0x1

.field private static final CMD_FETCH_CONFIG:I = 0x3

.field private static final CMD_POP_REMOVE:I = 0x2

.field private static final DBG:Z

.field private static final DBG_DUMP:Z

.field private static final DBG_LOGV:Z

.field private static final IM_CONFIG_NAME:Ljava/lang/String; = "GameModeImComponents"

.field private static final INCALL_TIMEOUT:J = 0x7530L

.field private static NOTIFICATION_ID:I = 0x0

.field private static final SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "OemSceneModeUtils"

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/oneplus/util/OemSceneModeUtils;

.field private static sIsFetched:Z

.field private static sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

.field private static s_ImComponentLists:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImSpecialActions:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    const-string v0, "persist.debug.scene.imcall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    const-string v0, "persist.debug.scene.dump"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    const v0, 0xd348

    sput v0, Lcom/oneplus/util/OemSceneModeUtils;->NOTIFICATION_ID:I

    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    sput-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->loadDefaultConfigs()V

    new-instance v0, Lcom/oneplus/util/OemSceneModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/util/OemSceneModeUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/util/OemSceneModeUtils;->checkLaunchedApp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->hideView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static checkLaunchedApp(Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " launch \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get launch intent for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v0, v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v2

    nop

    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private static fetchConfig()V
    .locals 4

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONFIG_NAME"

    const-string v3, "GameModeImComponents"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeUtils"

    const-string v1, "fetchConfig: skip to fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_3
    return-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneModeUtils;
    .locals 1

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sInstance:Lcom/oneplus/util/OemSceneModeUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/util/OemSceneModeUtils;

    invoke-direct {v0}, Lcom/oneplus/util/OemSceneModeUtils;-><init>()V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sInstance:Lcom/oneplus/util/OemSceneModeUtils;

    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sInstance:Lcom/oneplus/util/OemSceneModeUtils;

    return-object v0
.end method

.method private static hideView(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    const-string v2, "-1"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p0, :cond_2

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView: hide from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v0, p0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneModeUtils"

    const-string v1, "hideView: unable to hide"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static isBlockedByGameMode(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_10

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {p0, v1}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOnForUser(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockedByGameMode: intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockedByGameMode: rInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3, v2}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneModeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedByGameMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0, v4, v3}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundUid(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v5, :cond_5

    const-string v5, "OemSceneModeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBlockedByGameMode: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") is running in the foreground."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    sget-boolean v5, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v5, :cond_7

    const-string v5, "OemSceneModeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBlockedByGameMode: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") is running in the background."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "OemSceneModeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error on checking uid of \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\':"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_b

    const-string v7, "android.intent.category.LAUNCHER"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.category.HOME"

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    sget-boolean v7, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v7, :cond_a

    const-string v7, "OemSceneModeUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isBlockedByGameMode: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\' is launched from launcher."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    :cond_b
    sget-object v6, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v6, v4}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v6, v5}, Lcom/oneplus/util/MultiMap;->getKeyFromValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_d

    sget-boolean v6, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v6, :cond_c

    const-string v6, "OemSceneModeUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBlockedByGameMode: Skip action \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return v0

    :cond_d
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/oneplus/util/OemSceneModeUtils;->popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v6, "OemSceneModeUtils"

    const-string v7, "isBlockedByGameMode error:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_e
    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v3, :cond_f

    const-string v3, "OemSceneModeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isBlockedByGameMode: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is not handled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v0

    :cond_10
    :goto_3
    return v0
.end method

.method public static isBlockedByGameModeWithUid(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z
    .locals 2

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "isBlockedByGameMode: system starting activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/util/OemSceneModeUtils;->isBlockedByGameMode(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private static isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    move v0, v3

    nop

    :cond_0
    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v3, "foreground"

    goto :goto_0

    :cond_1
    const-string v3, "background"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v3, "foreground"

    goto :goto_1

    :cond_3
    const-string v3, "background"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OemSceneModeUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

.method private static isForegroundCalling(Landroid/content/Context;)Z
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v4, v1}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "OemSceneModeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: Skip to check the calling from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    return v4

    :cond_1
    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v4, :cond_2

    const-string v4, "OemSceneModeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: Calling from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "), popUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_8

    :try_start_0
    const-string v4, "android.uid.systemui"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundUid(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v4

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "OemSceneModeUtils"

    const-string v6, "isForegroundCalling error:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "OemSceneModeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\' is calling in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const-string v6, "foreground."

    goto :goto_0

    :cond_3
    const-string v6, "background."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v3, :cond_b

    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v4, :cond_b

    const-string v4, "OemSceneModeUtils"

    const-string v5, "isForegroundCalling stack: "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    :goto_1
    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    :goto_2
    sget-boolean v5, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v5, :cond_6

    const-string v5, "OemSceneModeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isForegroundCalling: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")\' is calling in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const-string v7, "foreground."

    goto :goto_3

    :cond_5
    const-string v7, "background."

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v3, :cond_7

    sget-boolean v5, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    const-string v6, "OemSceneModeUtils"

    const-string v7, "isForegroundCalling stack: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    throw v4

    :cond_8
    :goto_4
    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v4, :cond_a

    const-string v4, "OemSceneModeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForegroundCalling: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")\' is calling in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_9

    const-string v6, "foreground."

    goto :goto_5

    :cond_9
    const-string v6, "background."

    :goto_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz v3, :cond_b

    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v4, :cond_b

    const-string v4, "OemSceneModeUtils"

    const-string v5, "isForegroundCalling stack: "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    goto/16 :goto_1

    :cond_b
    :goto_6
    return v3
.end method

.method private static isForegroundUid(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->isAppForeground(I)Z

    move-result v2

    move v0, v2

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :cond_0
    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundUid: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    :goto_0
    const-string v3, "foreground"

    goto :goto_1

    :cond_1
    const-string v3, "background"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "OemSceneModeUtils"

    const-string v3, "isForegroundCalling error:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundUid: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    :goto_2
    return v0

    :goto_3
    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundUid: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const-string v3, "foreground"

    goto :goto_4

    :cond_3
    const-string v3, "background"

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OemSceneModeUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v1
.end method

.method public static isGameModeOn(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOnForUser(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static isGameModeOnForUser(Landroid/content/Context;I)Z
    .locals 6

    sput-object p0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "isGameModeOnForUser:"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "NotifyFor3PtyCallsBlocking"

    invoke-static {v0}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0

    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_2

    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGameModeOnForUser: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", oimc status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0x19

    aput v4, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_notifications_3rd_calls"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v0, v2, :cond_4

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isScreenAwake(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isScreenLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->fetchConfig()V

    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v3, :cond_3

    const-string v3, "OemSceneModeUtils"

    const-string v4, "isGameModeOnForUser: true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v2

    :cond_4
    goto :goto_2

    :goto_1
    nop

    const-string v2, "OemSceneModeUtils"

    const-string v3, "isGameModeOnForUser error:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_5

    const-string v0, "OemSceneModeUtils"

    const-string v2, "isGameModeOnForUser: false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method private static isHandledByGameMode(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2, v1}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHandledByGameMode: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v5, " "

    goto :goto_0

    :cond_0
    const-string v5, " not "

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "handled on game mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2
.end method

.method public static isMutedByGameMode(Landroid/content/Context;Landroid/media/AudioAttributes;)Z
    .locals 5

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMutedByGameMode: aa = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isHandledByGameMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-static {p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMutedByGameMode: sound("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") will be blocked here"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isMutedByStatusBar(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z
    .locals 8

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMutedByStatusBar: sbn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMutedByStatusBar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    const-string v4, "call"

    iget-object v5, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    sget-boolean v5, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v5, :cond_2

    const-string v5, "OemSceneModeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMutedByStatusBar: notificationIntent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    invoke-static {p0, v4, v5}, Lcom/oneplus/util/OemSceneModeUtils;->isBlockedByGameMode(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "OemSceneModeUtils"

    const-string v5, "isMutedByStatusBar error"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return v1
.end method

.method public static isPackageHandledByGameMode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageHandledByGameMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v0, p1}, Lcom/oneplus/util/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static isScreenAwake(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenAwake: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method private static isScreenLocked(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    sget-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "OemSceneModeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isScreenLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public static isStreamMutedByGameMode(Landroid/content/Context;I)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStreamMutedByGameMode: streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isHandledByGameMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    :cond_1
    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStreamMutedByGameMode: sound stream("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") will be blocked here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static isUsageMutedByGameMode(Landroid/content/Context;I)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_DUMP:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsageMutedByGameMode: audio_usage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isHandledByGameMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/util/OemSceneModeUtils;->isForegroundCalling(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsageMutedByGameMode: sound usage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") will be blocked here"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static loadDefaultConfigs()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    if-lt v7, v3, :cond_1

    sget-boolean v3, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "OemSceneModeUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultString("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    aget-object v5, v6, v5

    aget-object v4, v6, v4

    invoke-virtual {v3, v5, v4}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x502001e

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-lt v8, v3, :cond_4

    sget-boolean v8, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v8, :cond_3

    const-string v8, "OemSceneModeUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intentString("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v7, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v8, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    aget-object v9, v7, v5

    aget-object v10, v7, v4

    invoke-virtual {v8, v9, v10}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x502001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-lt v9, v3, :cond_7

    sget-boolean v9, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v9, :cond_6

    const-string v9, "OemSceneModeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "actionString("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v8, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    aget-object v10, v8, v5

    aget-object v11, v8, v4

    invoke-virtual {v9, v10, v11}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->fetchConfig()V

    return-void
.end method

.method private static popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "popNotify+ :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/oneplus/util/notification/SimpleHeadsUpController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    :cond_1
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    move v5, v0

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x5090008

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v3}, Lcom/oneplus/util/OemSceneModeUtils;->getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x50c005a

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v9, v12, v4

    invoke-virtual {v0, v10, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "OemSceneModeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "popNotify: strTitle  = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "OemSceneModeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "popNotify: appLabel = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "OemSceneModeUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "popNotify: pkgName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :try_start_0
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v12, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v8, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    sget-boolean v14, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v14, :cond_6

    const-string v14, "OemSceneModeUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showView: \'"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'("

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is already existed. Skip to pop."

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-void

    :cond_7
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    invoke-static {v8}, Lcom/oneplus/util/OemSceneModeUtils;->hideView(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/util/OemSceneModeUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v4

    const v12, 0x5070031

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v13, 0x507002f

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v14, 0x507002e

    invoke-virtual {v6, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    new-instance v15, Lcom/oneplus/util/OemSceneModeUtils$2;

    invoke-direct {v15, v8}, Lcom/oneplus/util/OemSceneModeUtils$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Lcom/oneplus/util/OemSceneModeUtils$3;

    invoke-direct {v15, v2, v1, v5, v8}, Lcom/oneplus/util/OemSceneModeUtils$3;-><init>(Landroid/content/Intent;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v6, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Lcom/oneplus/util/OemSceneModeUtils$4;

    invoke-direct {v15, v8}, Lcom/oneplus/util/OemSceneModeUtils$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v15}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static/range {p0 .. p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v15

    if-ne v15, v11, :cond_8

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_9

    const v15, 0x5070030

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v16, v0

    const v0, 0x5060034

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x5040001

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_9
    move-object/from16 v16, v0

    :goto_3
    const-wide/16 v0, 0x7530

    invoke-static {v6, v8, v0, v1, v5}, Lcom/oneplus/util/OemSceneModeUtils;->showView(Landroid/view/View;Ljava/lang/String;JI)V

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_a

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "popNotify- :"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method private static resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/oneplus/util/OemSceneModeUtils;->resolveImConfigFromJSON(Lorg/json/JSONArray;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "OemSceneModeUtils"

    const-string v1, "resolveAdditionalConfig: sContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static resolveImConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12

    if-nez p0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "resolveCompatConfigFromJSON: jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pkg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_components"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    sget-boolean v9, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "OemSceneModeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImComponentLists \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_special_intents"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v9, :cond_3

    const-string v9, "OemSceneModeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImSpecialIntents \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "im_special_actions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-boolean v9, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v9, :cond_5

    const-string v9, "OemSceneModeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolveImConfigFromJSON: add s_ImSpecialActions \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v9, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v9, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    if-nez v0, :cond_f

    sput-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "resolveImConfigFromJSON: s_ImSpecialActions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OemSceneModeUtils"

    const-string v3, "resolveCompatConfigFromJSON error:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    if-nez v0, :cond_f

    sput-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "OemSceneModeUtils"

    const-string v3, "resolveCompatConfigFromJSON JSONException:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    if-nez v0, :cond_f

    sput-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :cond_f
    :goto_3
    return-void

    :goto_4
    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    if-nez v1, :cond_12

    sput-boolean v2, Lcom/oneplus/util/OemSceneModeUtils;->sIsFetched:Z

    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/util/OemSceneModeUtils;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "OemSceneModeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveImConfigFromJSON: s_ImSpecialIntents = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialIntents:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v3}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveImConfigFromJSON: s_ImSpecialActions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->s_ImSpecialActions:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OemSceneModeUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    throw v0
.end method

.method private static showView(Landroid/view/View;Ljava/lang/String;JI)V
    .locals 7

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView+: pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_9

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    :try_start_0
    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-static {v1, p4}, Lcom/oneplus/util/OemSceneModeUtils;->isGameModeOnForUser(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeUtils"

    const-string v2, "showView: Game mode is off. Skip to pop."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PKG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    :try_start_1
    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "OemSceneModeUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showView: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is already existed. Skip to pop."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    sget-object v4, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v4, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    iput v0, v4, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "PKG"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v5, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    return-void

    :cond_6
    :try_start_2
    sget-object v4, Lcom/oneplus/util/OemSceneModeUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x30

    const/4 v6, -0x2

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v5, 0x31

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v5, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz v5, :cond_7

    sget-object v5, Lcom/oneplus/util/OemSceneModeUtils;->sSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {v5, p0, v4, p2, p3}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->showView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "OemSceneModeUtils"

    const-string v3, "showView failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const-string v2, "PKG"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :goto_1
    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v0, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PKG"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v3, Lcom/oneplus/util/OemSceneModeUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    throw v1

    :cond_9
    const-string v0, "OemSceneModeUtils"

    const-string v1, "showView failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "OemSceneModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView-: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "OemSceneModeUtils: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "OemSceneModeUtils: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OemSceneModeUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, "OemSceneModeUtils: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
