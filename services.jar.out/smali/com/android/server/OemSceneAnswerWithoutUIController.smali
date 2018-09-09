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
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "game_mode_answer_no_incallui"

    iput-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->KEY_ANSWER_WITHOUT_UI:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    .line 65
    new-instance v0, Lcom/android/server/OemSceneAnswerWithoutUIController$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController$1;-><init>(Lcom/android/server/OemSceneAnswerWithoutUIController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    .line 36
    iput-object p1, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/OemSceneAnswerWithoutUIController;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneAnswerWithoutUIController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;

    .line 43
    :cond_0
    sget-object v1, Lcom/android/server/OemSceneAnswerWithoutUIController;->instance:Lcom/android/server/OemSceneAnswerWithoutUIController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getIntValueFromSettings(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 87
    const-string v0, "OPOIMCController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method private unregisterAnswerWithoutUIContentObServer()V
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    .line 61
    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public addOrRemoveRule(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 73
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

    .line 74
    .local v0, "enable":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAnswerWithoutUIObserver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->logd(Ljava/lang/String;)V

    .line 75
    if-eqz v0, :cond_1

    .line 76
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1, p1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Enable_AnswerWithoutUI:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1, p1}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 80
    :goto_1
    return-void
.end method

.method public registerAnswerWithoutUIContentObServer()V
    .locals 5

    .line 47
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

    .line 48
    invoke-direct {p0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->unregisterAnswerWithoutUIContentObServer()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->hasRegister:Z

    .line 50
    iget-object v0, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_answer_no_incallui"

    .line 51
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneAnswerWithoutUIController;->mAnswerWithoutUIObserver:Landroid/database/ContentObserver;

    .line 50
    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    return-void
.end method
