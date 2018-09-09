.class interface abstract Lcom/android/server/am/IEmbryoManager;
.super Ljava/lang/Object;
.source "IEmbryoManager.java"


# virtual methods
.method public abstract activityTransition(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract attach(Landroid/app/IApplicationThread;I)Z
.end method

.method public abstract checkBackgroundLevel(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract forceUpdateOnlineConfig()V
.end method

.method public abstract goingToSleep()V
.end method

.method public abstract initiate(Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract notifyApplicationCrash(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract obtain(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Landroid/app/IApplicationThread;
.end method

.method public abstract packageChanged(Ljava/lang/String;I)V
.end method

.method public abstract packageInstalled(Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract prepare(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract processStarted(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract resolveConfig(Lorg/json/JSONArray;)V
.end method

.method public abstract setBlackList(Ljava/util/List;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract updateConfig()V
.end method

.method public abstract wakingUp()V
.end method
