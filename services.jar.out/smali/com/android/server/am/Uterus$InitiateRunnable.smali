.class final Lcom/android/server/am/Uterus$InitiateRunnable;
.super Ljava/lang/Object;
.source "Uterus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Uterus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InitiateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Uterus;


# direct methods
.method private constructor <init>(Lcom/android/server/am/Uterus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/Uterus;Lcom/android/server/am/Uterus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/Uterus$InitiateRunnable;-><init>(Lcom/android/server/am/Uterus;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/embryo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v6, v4

    move v4, v5

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v8}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v8

    invoke-virtual {v8, v7, v0}, Lcom/android/server/am/EmbryoHelper;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-virtual {v8, v7, v0}, Lcom/android/server/am/Uterus;->getOrCreateSupervisor(Ljava/lang/String;I)Lcom/android/server/am/EmbryoSupervisor;

    move-result-object v8

    if-nez v8, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "fg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/android/server/am/EmbryoSupervisor;->restoreForegroundTime(J)V

    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    invoke-static {v12}, Lcom/android/server/am/Uterus;->access$900(Lcom/android/server/am/Uterus;)Lcom/android/server/am/EmbryoHelper;

    move-result-object v12

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/EmbryoHelper;->checkIfProcessExist(Landroid/content/pm/ApplicationInfo;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v8}, Lcom/android/server/am/EmbryoSupervisor;->isLaunchable()Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    invoke-static {}, Lcom/android/server/am/Uterus;->access$700()I

    move-result v12

    if-ge v6, v12, :cond_4

    iget-object v12, p0, Lcom/android/server/am/Uterus$InitiateRunnable;->this$0:Lcom/android/server/am/Uterus;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v12, v8, v4, v5}, Lcom/android/server/am/Uterus;->prepare(Lcom/android/server/am/EmbryoSupervisor;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Embryo_Uterus"

    const-string v3, "Embryo initiate failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
