.class Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;
.super Ljava/lang/Object;
.source "AppFieldsDefaultProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/DefaultProvider;


# static fields
.field private static sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

.field private static sInstanceLock:Ljava/lang/Object;


# instance fields
.field protected mAppId:Ljava/lang/String;

.field protected mAppInstallerId:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mAppVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppInstallerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error retrieving package info: appName set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppName:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppVersion:Ljava/lang/String;

    return-void
.end method

.method static dropInstance()V
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getProvider()Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    return-object v0
.end method

.method public static initializeProvider(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    invoke-direct {v1, p0}, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->sInstance:Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "&an"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppName:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v1, "&av"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppVersion:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string v1, "&aid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppId:Ljava/lang/String;

    return-object v0

    :cond_3
    const-string v1, "&aiid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/analytics/tracking/android/AppFieldsDefaultProvider;->mAppInstallerId:Ljava/lang/String;

    return-object v0

    :cond_4
    return-object v0
.end method

.method public providesField(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "&an"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&av"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&aid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "&aiid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
