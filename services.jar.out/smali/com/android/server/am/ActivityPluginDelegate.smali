.class public Lcom/android/server/am/ActivityPluginDelegate;
.super Ljava/lang/Object;
.source "ActivityPluginDelegate.java"


# static fields
.field private static final FOREGROUND_ACTIVITY_TRIGGER:Ljava/lang/String; = "foreground_activity_trigger"

.field private static final LOGV:Z = false

.field private static final MAX_CONNECT_RETRIES:I = 0xf

.field private static final TAG:Ljava/lang/String; = "ActivityPluginDelegate"

.field private static activityServiceClass:Ljava/lang/Class;

.field private static activityServiceObj:Ljava/lang/Object;

.field private static extJarAvail:Z

.field static isEnabled:Z

.field static mGetFeatureEnableRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    sput-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityInvokeNotification(Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->getFeatureFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->loadActivityExtJar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "sendActivityInvokeNotification"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void

    :cond_1
    :goto_2
    return-void
.end method

.method public static activitySuspendNotification(Ljava/lang/String;ZZ)V
    .locals 8

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->getFeatureFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/ActivityPluginDelegate;->loadActivityExtJar()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const-string/jumbo v1, "sendActivitySuspendNotification"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    nop

    :goto_1
    return-void

    :cond_1
    :goto_2
    return-void
.end method

.method public static declared-synchronized getFeatureFlag()Z
    .locals 5

    const-class v0, Lcom/android/server/am/ActivityPluginDelegate;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "foreground_activity_trigger"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v4, v2

    nop

    :cond_1
    sput-boolean v4, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z

    sget v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/server/am/ActivityPluginDelegate;->mGetFeatureEnableRetryCount:I

    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_2
    :goto_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/ActivityPluginDelegate;->isEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized loadActivityExtJar()Z
    .locals 7

    const-class v0, Lcom/android/server/am/ActivityPluginDelegate;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.qualcomm.qti.activityextension.ActivityNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/framework/ActivityExt.jar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return v4

    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v3

    :cond_1
    :try_start_2
    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :try_start_3
    new-instance v5, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v6, "com.qualcomm.qti.activityextension.ActivityNotifier"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    sget-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/server/am/ActivityPluginDelegate;->activityServiceObj:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v3

    :catch_1
    move-exception v4

    :try_start_5
    sput-boolean v3, Lcom/android/server/am/ActivityPluginDelegate;->extJarAvail:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return v3

    :cond_2
    :goto_0
    monitor-exit v0

    return v4

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
