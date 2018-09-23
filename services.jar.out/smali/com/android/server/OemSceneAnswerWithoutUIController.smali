.class public Lcom/android/server/OemSceneAnswerWithoutUIController;
.super Ljava/lang/Object;
.source "OemSceneAnswerWithoutUIController.java"


# static fields
.field private static instance:Lcom/android/server/OemSceneAnswerWithoutUIController;


# instance fields
.field private final KEY_ANSWER_WITHOUT_UI:Ljava/lang/String;

.field private hasRegister:Z

.field private final mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "game_mode_answer_no_incallui"

    iput-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->KEY_ANSWER_WITHOUT_UI:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    new-instance v0, Lcom/android/server/OemSceneAnswerWithoutUIController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController$1;-><init>(Lcom/android/server/OemSceneAnswerWithoutUIController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;
    .locals 2

    const-class v0, Lcom/android/server/OemSceneAnswerWithoutUIController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneAnswerWithoutUIController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;

    :cond_0
    sget-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getIntValueFromSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OPOIMCController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterAnswerWithoutUIContentObServer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOrRemoveRule(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    const-string v1, "game_mode_answer_no_incallui"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getIntValueFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAnswerWithoutUIObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->logd(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1, p1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1, p1}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    :goto_1
    return-void
.end method

.method public registerAnswerWithoutUIContentObServer()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerAnswerWithoutUIContentObServer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->unregisterAnswerWithoutUIContentObServer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_answer_no_incallui"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
