.class public abstract Lcom/android/server/pm/InstantAppResolver;
.super Ljava/lang/Object;
.source "InstantAppResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/InstantAppResolver$ResolutionStatus;
    }
.end annotation


# static fields
.field private static final DEBUG_INSTANT:Z

.field private static final RESOLUTION_BIND_TIMEOUT:I = 0x2

.field private static final RESOLUTION_CALL_TIMEOUT:I = 0x3

.field private static final RESOLUTION_FAILURE:I = 0x1

.field private static final RESOLUTION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 1

    invoke-static/range {p0 .. p6}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(IJLjava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    return-void
.end method

.method public static buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getFlags()I

    move-result v7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v8, v0

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v0, v7

    const/high16 v9, 0x800000

    or-int/2addr v0, v9

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v5, :cond_0

    const-string v0, "android.intent.extra.EPHEMERAL_TOKEN"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INSTANT_APP_TOKEN"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.EPHEMERAL_HOSTNAME"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INSTANT_APP_HOSTNAME"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v0, "android.intent.extra.INSTANT_APP_ACTION"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INTENT"

    move-object/from16 v9, p1

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p9, :cond_2

    const-string v0, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v12, p3

    goto/16 :goto_5

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    if-eqz v4, :cond_5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v6, :cond_4

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v11, :cond_4

    const-string v12, "android.intent.extra.SPLIT_NAME"

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v13, v13, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string v12, "android.intent.extra.INTENT"

    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p2

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    new-array v13, v11, [Landroid/content/Intent;

    aput-object v0, v13, v10

    move-object/from16 v24, v13

    new-array v13, v11, [Ljava/lang/String;

    aput-object p5, v13, v10

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    move-object/from16 v19, v13

    move-object/from16 v18, v24

    const/4 v13, 0x2

    move-object/from16 v14, p3

    move/from16 v22, p6

    invoke-interface/range {v12 .. v22}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v12

    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v12}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v10, "android.intent.extra.EPHEMERAL_FAILURE"

    invoke-virtual {v8, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.intent.extra.INSTANT_APP_FAILURE"

    invoke-virtual {v8, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_6
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v0

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-array v0, v11, [Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/16 v23, 0x0

    :try_start_2
    aput-object v10, v0, v23

    new-array v13, v11, [Ljava/lang/String;

    aput-object p5, v13, v23

    const/high16 v20, 0x54000000

    const/16 v21, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x2

    move-object/from16 v14, p3

    move-object/from16 v18, v0

    move/from16 v22, p6

    invoke-interface/range {v12 .. v22}, Landroid/app/IActivityManager;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    new-instance v12, Landroid/content/IntentSender;

    invoke-direct {v12, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v13, "android.intent.extra.EPHEMERAL_SUCCESS"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v13, "android.intent.extra.INSTANT_APP_SUCCESS"

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/16 v23, 0x0

    :goto_2
    if-eqz v2, :cond_7

    const-string v0, "android.intent.extra.VERIFICATION_BUNDLE"

    invoke-virtual {v8, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_7
    const-string v0, "android.intent.extra.CALLING_PACKAGE"

    move-object/from16 v12, p3

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_b

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    const/4 v13, 0x0

    invoke-interface/range {p10 .. p10}, Ljava/util/List;->size()I

    move-result v14

    :goto_3
    move/from16 v25, v14

    move/from16 v11, v25

    if-ge v13, v11, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v2, v14

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    const-string v3, "android.intent.extra.UNKNOWN_INSTANT_APP"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v4, :cond_8

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {v4}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    nop

    move/from16 v4, v23

    :goto_4
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.intent.extra.SPLIT_NAME"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->splitName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.intent.extra.LONG_VERSION_CODE"

    iget-wide v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "android.intent.extra.INSTANT_APP_EXTRAS"

    iget-object v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    aput-object v1, v0, v13

    if-nez v13, :cond_9

    invoke-virtual {v8, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.VERSION_CODE"

    iget-wide v4, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->versionCode:J

    long-to-int v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_9
    add-int/lit8 v13, v13, 0x1

    move v14, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    const/4 v11, 0x1

    goto :goto_3

    :cond_a
    const-string v1, "android.intent.extra.INSTANT_APP_BUNDLES"

    invoke-virtual {v8, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_b
    const-string v0, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    return-object v8
.end method

.method private static computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    nop

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getIntentFilters()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v5, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_8

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstantAppIntentFilter;

    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getFilters()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-ltz v9, :cond_7

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter;

    nop

    invoke-virtual {v10}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    :cond_4
    const-string/jumbo v12, "http"

    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    const-string/jumbo v12, "https"

    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    const-string v12, "android.intent.action.VIEW"

    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "android.intent.category.BROWSABLE"

    invoke-virtual {v10, v12}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_2

    :cond_6
    new-instance v12, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {v7}, Landroid/content/pm/InstantAppIntentFilter;->getSplitName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v12, v10, v2, v13, v14}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Landroid/content/IntentFilter;Landroid/content/pm/InstantAppResolveInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v12}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v5, v7, v8, v6, v9}, Lcom/android/server/pm/PackageManagerService$InstantAppIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_9

    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] Found match(es); "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v6

    :cond_a
    sget-boolean v10, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v10, :cond_b

    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "] No matches found package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", versionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo;->getVersionCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v4

    :cond_c
    :goto_4
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual {v7}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-eqz v5, :cond_d

    return-object v4

    :cond_d
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_e

    const-string v4, "PackageManager"

    const-string v5, "No app filters; go to phase 2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x801

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setLaunchToken(Ljava/lang/String;)V

    return-object v0
.end method

.method public static doInstantAppResolutionPhaseOne(Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 19

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] Phase1; resolving"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v12, v1, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    invoke-static {v12}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v15

    const/4 v10, 0x2

    :try_start_0
    iget-object v0, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0

    move-object/from16 v9, p0

    invoke-virtual {v9, v13, v0, v11}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppResolveInfoList(Landroid/content/Intent;[ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v6, v1, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/InstantAppRequest;->userId:I

    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v1, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v0

    move-object/from16 v17, v5

    move-object v5, v12

    move-object/from16 v9, v17

    move v15, v10

    move-object v10, v11

    :try_start_1
    invoke-static/range {v4 .. v10}, Lcom/android/server/pm/InstantAppResolver;->filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;

    move-result-object v4
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    move-object v14, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move v15, v10

    :goto_0
    goto :goto_2

    :catch_1
    move-exception v0

    move v15, v10

    :goto_1
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/16 v16, 0x2

    :goto_2
    move/from16 v0, v16

    goto :goto_3

    :cond_2
    iget v4, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    if-ne v4, v15, :cond_3

    const/16 v16, 0x3

    goto :goto_2

    :cond_3
    const/16 v16, 0x1

    goto :goto_2

    :goto_3
    iget-boolean v4, v1, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    const/16 v4, 0x383

    invoke-static {v4, v2, v3, v11, v0}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    :cond_4
    sget-boolean v4, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v4, :cond_8

    if-nez v14, :cond_8

    if-ne v0, v15, :cond_5

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; bind timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; call timed out"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; service connection error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Phase1; No results matched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    if-nez v14, :cond_9

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_9

    new-instance v4, Landroid/content/pm/AuxiliaryResolveInfo;

    invoke-static {v12, v11}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v11, v7, v5, v6}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    return-object v4

    :cond_9
    return-object v14
.end method

.method public static doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V
    .locals 18

    move-object/from16 v8, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iget-object v12, v0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Phase2; resolving"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v11, v8, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    invoke-static {v11}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v17

    new-instance v13, Lcom/android/server/pm/InstantAppResolver$1;

    move-object v1, v13

    move-object v2, v11

    move-object v3, v8

    move-object v4, v12

    move-object/from16 v5, v17

    move-object/from16 v6, p3

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/InstantAppResolver$1;-><init>(Landroid/content/Intent;Landroid/content/pm/InstantAppRequest;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/Context;)V

    :try_start_0
    iget-object v0, v8, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {v0}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefixSecure()[I

    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    move-object/from16 v10, v17

    move-object v1, v11

    move-object v11, v0

    move-object v2, v12

    move-wide v3, v14

    move-object/from16 v14, p4

    move-wide v15, v3

    :try_start_1
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/pm/InstantAppResolverConnection;->getInstantAppIntentFilterList(Landroid/content/Intent;[ILjava/lang/String;Lcom/android/server/pm/InstantAppResolverConnection$PhaseTwoCallback;Landroid/os/Handler;J)V
    :try_end_1
    .catch Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v11

    move-object v2, v12

    move-wide v3, v14

    :goto_0
    const/4 v5, 0x1

    iget v6, v0, Lcom/android/server/pm/InstantAppResolverConnection$ConnectionException;->failure:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v5, 0x2

    :cond_1
    const/16 v6, 0x384

    invoke-static {v6, v3, v4, v2, v5}, Lcom/android/server/pm/InstantAppResolver;->logMetrics(IJLjava/lang/String;I)V

    sget-boolean v6, Lcom/android/server/pm/InstantAppResolver;->DEBUG_INSTANT:Z

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Phase2; bind timed out"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] Phase2; service connection error"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private static filterInstantAppIntent(Ljava/util/List;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;Ljava/lang/String;)Landroid/content/pm/AuxiliaryResolveInfo;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/InstantAppResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/AuxiliaryResolveInfo;"
        }
    .end annotation

    move-object/from16 v6, p6

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestPrefix()[I

    move-result-object v7

    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->getDigestBytes()[[B

    move-result-object v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    const/4 v9, 0x1

    if-nez v2, :cond_1

    array-length v2, v7

    if-lez v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v9

    :goto_1
    move v10, v2

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v13, v0

    move-object v12, v1

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/InstantAppResolveInfo;

    if-eqz v10, :cond_2

    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->shouldLetInstallerDecide()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PackageManager"

    const-string v1, "InstantAppResolveInfo with mShouldLetInstallerDecide=true when digest required; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Landroid/content/pm/InstantAppResolveInfo;->getDigestBytes()[B

    move-result-object v15

    array-length v0, v7

    if-lez v0, :cond_6

    if-nez v10, :cond_3

    array-length v0, v15

    if-lez v0, :cond_6

    :cond_3
    const/4 v0, 0x0

    array-length v1, v7

    sub-int/2addr v1, v9

    :goto_3
    if-ltz v1, :cond_5

    aget-object v2, v8, v1

    invoke-static {v2, v15}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object v5, v14

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/InstantAppResolver;->computeResolveFilters(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/InstantAppResolveInfo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v13, 0x1

    :cond_7
    if-nez v12, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v12, v1

    goto :goto_5

    :cond_8
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    :goto_5
    goto :goto_2

    :cond_a
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v1, p1

    invoke-static {v1, v6}, Lcom/android/server/pm/InstantAppResolver;->createFailureIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v6, v13, v2, v12}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;)V

    return-object v0

    :cond_b
    move-object/from16 v1, p1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLogger()Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    sput-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    :cond_0
    sget-object v0, Lcom/android/server/pm/InstantAppResolver;->sMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private static logMetrics(IJLjava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/16 v2, 0x385

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x387

    invoke-virtual {v0, v1, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x386

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {}, Lcom/android/server/pm/InstantAppResolver;->getLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public static sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
