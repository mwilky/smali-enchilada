.class public Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
.super Ljava/lang/Object;
.source "DefaultAppLogic.java"


# static fields
.field private static final initLock:[B

.field private static instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mExcludedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mKeys:[Ljava/lang/String;

.field private mValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DefaultAppLogic"

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppConstants;->DEFAULTAPP_VALUE_LIST_KEY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppValueList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initExcludedMap()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;
    .locals 2

    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initLock:[B

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

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
    sget-object v0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->instance:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    return-object v0
.end method

.method private initExcludedMap()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.documentsui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    move v3, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->resetDefaultApp(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAppInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    new-instance v6, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    invoke-direct {v6}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;-><init>()V

    const/high16 v7, 0x20000

    invoke-virtual {v3, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v10}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->addActivityInfo(Landroid/content/pm/ActivityInfo;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    invoke-virtual {v2}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v6}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->isAppExist(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDefaultAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DataHelper;->getDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppIntent()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const/high16 v6, 0x10000

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mExcludedMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const-string v5, "android"

    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_4

    const-string v6, "DefaultAppLogic"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDefaultAppPackageName appType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " error defaultApp.size != 1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return-object v6

    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v6, v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "DefaultAppLogic"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPmDefaultAppPackageName appType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", defaultApp pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getSystemDefaultPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public initDefaultAppSettings()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->initDefaultAppSettings(Z)V

    return-void
.end method

.method public initDefaultAppSettings(Z)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DataHelper;->isDefaultAppInited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "android"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/util/List;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mKeys:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->resetDefaultApp(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppInited(Landroid/content/Context;)V

    return-void
.end method

.method public varargs invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    :cond_1
    :goto_2
    return-object v0
.end method

.method resetDefaultApp(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getSystemDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v6

    iget-object v0, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v4}, Lcom/oneplus/settings/defaultapp/DataHelper;->setDefaultAppPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->updateRelatedDefaultApp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, v1, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppFilter()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oneplus/settings/defaultapp/apptype/DefaultAppTypeInfo;->getAppMatchParam()Ljava/util/List;

    move-result-object v9

    const/4 v0, 0x0

    :goto_0
    move v11, v0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;

    invoke-virtual {v13}, Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;->getActivityInfo()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    new-array v15, v0, [Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move-object v10, v0

    :goto_1
    move/from16 v0, v16

    if-ltz v0, :cond_2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/content/pm/ActivityInfo;

    move/from16 v19, v6

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v7

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v3

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v15, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v22, v3

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v3

    :cond_1
    add-int/lit8 v16, v0, -0x1

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v3, p3

    goto :goto_1

    :cond_2
    move/from16 v19, v6

    move-object/from16 v20, v7

    if-eqz v10, :cond_3

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v5, v0, v3, v15, v10}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    const-string v0, "op_default_app_browser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getCallingUserId"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v6, 0x0

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object/from16 v23, v0

    const-string v0, "setDefaultBrowserPackageName"

    const/4 v2, 0x2

    move-object/from16 v24, v3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v16, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v18, 0x0

    :try_start_3
    aput-object v16, v3, v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v3, v17

    invoke-virtual {v7, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/16 v16, 0x0

    :try_start_5
    aput-object v3, v2, v16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v17

    invoke-virtual {v1, v5, v0, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->invoke(Landroid/content/pm/PackageManager;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v16, v18

    goto :goto_2

    :catch_2
    move-exception v0

    move/from16 v16, v6

    goto :goto_2

    :catch_3
    move-exception v0

    const/16 v16, 0x0

    :goto_2
    const-string v2, "DefaultAppLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultAppPosition: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    add-int/lit8 v0, v11, 0x1

    move/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_4
    move-object/from16 v12, p2

    move/from16 v19, v6

    move-object/from16 v20, v7

    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-ltz p4, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPosition(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultApp(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
