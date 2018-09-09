.class public Lcom/android/server/am/ConnorFilter;
.super Ljava/lang/Object;
.source "ConnorFilter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnorFilter"

.field private static final sClusterBlackIntentActions:[Ljava/lang/String;

.field private static final sClusterBlackPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const-string v0, "android"

    const-string v1, "com.android.systemui"

    const-string v2, "com.google.android.gsf"

    const-string v3, "com.google.android.packageinstaller"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ConnorFilter;->sClusterBlackPackages:[Ljava/lang/String;

    .line 46
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    const-string v2, "android.net.conn.CAPTIVE_PORTAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ConnorFilter;->sClusterBlackIntentActions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClusterFilterSet(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 66
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 67
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 66
    invoke-static {p0, v2}, Lcom/android/server/am/ConnorFilter;->resolvePkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    sget-object v3, Lcom/android/server/am/ConnorFilter;->sClusterBlackIntentActions:[Ljava/lang/String;

    array-length v4, v3

    move-object v5, v2

    move v2, v1

    .end local v2    # "pkgName":Ljava/lang/String;
    .local v5, "pkgName":Ljava/lang/String;
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v6, v3, v2

    .line 71
    .local v6, "action":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/android/server/am/ConnorFilter;->resolvePkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v6    # "action":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ConnorFilter"

    const-string v4, "getClusterFilterSet fail"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lcom/android/server/am/ConnorFilter;->sClusterBlackPackages:[Ljava/lang/String;

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 80
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_3
    return-object v0
.end method

.method public static getInstalledSet(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Ljava/util/HashSet;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManagerInternal;
    .param p1, "observer"    # Landroid/content/pm/PackageManagerInternal$PackageListObserver;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    move-result-object v1

    .line 55
    .local v1, "list":Landroid/content/pm/PackageList;
    invoke-virtual {v1}, Landroid/content/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "list":Landroid/content/pm/PackageList;
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ConnorFilter"

    const-string v3, "getInstalledSet fail"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method private static resolvePkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 89
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 96
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ConnorFilter"

    const-string/jumbo v2, "resolvePkgByIntent fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
