.class public Lcom/oneplus/settings/highpowerapp/MyActivityManager;
.super Ljava/lang/Object;
.source "MyActivityManager.java"

# interfaces
.implements Lcom/oneplus/settings/highpowerapp/IMyActivityManager;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;


# instance fields
.field private getBgPowerHungryList:Ljava/lang/reflect/Method;

.field isLocked:Ljava/lang/reflect/Field;

.field isStopped:Ljava/lang/reflect/Field;

.field packageName:Ljava/lang/reflect/Field;

.field powerLevel:Ljava/lang/reflect/Field;

.field private stopBgPowerHungryApp:Ljava/lang/reflect/Method;

.field timeStamp:Ljava/lang/reflect/Field;

.field uId:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    :try_start_0
    const-string v0, "com.oneplus.highpower.HighPowerDetectManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBgPowerHungryList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    const-string v1, "stopBgPowerHungryApp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyActivityManager Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private convert(Ljava/util/List;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v3, v0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    const/16 v5, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "pkgName"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "powerLevel"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "isLocked"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "isStopped"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "timeStamp"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-array v0, v7, [I

    aput v5, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "uid"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->packageName:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->powerLevel:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v13, v8

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isLocked:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->isStopped:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move v11, v8

    iget-object v8, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->timeStamp:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-array v7, v7, [I

    aput v5, v7, v6

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->uId:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-object v8, v6

    move-object v9, v0

    move v10, v5

    move v7, v11

    move v11, v13

    move v1, v13

    move v13, v7

    invoke-direct/range {v8 .. v15}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IIZZJ)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "convert pn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uid ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", level="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", lock="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", stop="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v7, v11

    move v1, v13

    new-instance v5, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v12

    move/from16 v20, v7

    move-wide/from16 v21, v14

    invoke-direct/range {v16 .. v22}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;-><init>(Ljava/lang/String;IZZJ)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "convert pn: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", level="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", lock="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", stop="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    nop

    move-object v0, v3

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_3
    return-object v2
.end method

.method public static get(Landroid/content/Context;)Lcom/oneplus/settings/highpowerapp/MyActivityManager;
    .locals 2

    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->instance:Lcom/oneplus/settings/highpowerapp/MyActivityManager;

    return-object v0
.end method


# virtual methods
.method public getBgMonitorMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/highpowerapp/HighPowerApp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->getBgPowerHungryList:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-object v0
.end method

.method public setBgMonitorMode(Z)V
    .locals 0

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->stopBgPowerHungryApp:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/highpowerapp/MyActivityManager;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
