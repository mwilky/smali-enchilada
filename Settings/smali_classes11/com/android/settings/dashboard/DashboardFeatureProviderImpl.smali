.class public Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DashboardFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/DashboardFeatureProvider;


# static fields
.field private static final DASHBOARD_TILE_PREF_KEY_PREFIX:Ljava/lang/String; = "dashboard_tile_pref_"

.field private static final META_DATA_KEY_INTENT_ACTION:Ljava/lang/String; = "com.android.settings.intent.action"

.field static final META_DATA_KEY_ORDER:Ljava/lang/String; = "com.android.settings.order"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DashboardFeatureImpl"


# instance fields
.field private final mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

.field protected final mContext:Landroid/content/Context;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getExtraIntentAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settingslib/drawer/CategoryManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/CategoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 3

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const v1, 0x7f121152

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eT0JYpovsB0-eUpWXkBH1qYJv_I;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$eT0JYpovsB0-eUpWXkBH1qYJv_I;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method static synthetic lambda$bindIcon$3(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic lambda$bindIcon$4(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.icon_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2, v1}, Lcom/android/settingslib/drawer/TileUtils;->getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "DashboardFeatureImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get icon from uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;

    invoke-direct {v5, p2, v4}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;-><init>(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V

    invoke-static {v5}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$bindPreferenceToTile$0(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$bindSummary$1(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$bindSummary$2(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.summary_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v3, "com.android.settings.summary"

    invoke-static {v2, v1, v0, v3}, Lcom/android/settingslib/drawer/TileUtils;->getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$f6w3zqqhleyaUiHJCm70VP43jfI;

    invoke-direct {v3, p2, v2}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$f6w3zqqhleyaUiHJCm70VP43jfI;-><init>(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 3

    invoke-direct {p0, p3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DashboardFeatureImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot resolve intent, skipping. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->updateUserHandlesIfNeeded(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    invoke-virtual {p1, p3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p3, p4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logDashboardStartIntent(Landroid/content/Context;Landroid/content/Intent;I)V

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    invoke-virtual {p1, p3, v1, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settingslib/drawer/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Lcom/android/settingslib/drawer/Tile;)V

    :goto_0
    return-void
.end method


# virtual methods
.method bindIcon(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.icon_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$6nCUbNprlrw--1aNwFQYcoGh4Oc;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$6nCUbNprlrw--1aNwFQYcoGh4Oc;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Lcom/android/settingslib/drawer/Tile;Landroid/support/v7/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-object v0, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v10, p5

    invoke-virtual {v7, v10}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p5

    invoke-virtual {v6, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v6, v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindSummary(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v6, v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindIcon(Landroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v11, v8, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v11, :cond_2

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.settings.intent.action"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.settings.order"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.android.settings.order"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    const-string v3, "com.android.settings.order"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v12}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v15, v0

    const-string v0, ":settings:source_metrics"

    move/from16 v5, p2

    invoke-virtual {v15, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v13, :cond_4

    invoke-virtual {v15, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    new-instance v4, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;

    move-object v0, v4

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v6, v4

    move-object v4, v15

    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;-><init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v14, :cond_6

    iget v1, v8, Lcom/android/settingslib/drawer/Tile;->priority:I

    if-eqz v1, :cond_6

    iget v1, v8, Lcom/android/settingslib/drawer/Tile;->priority:I

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    :cond_6
    if-eqz v14, :cond_a

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    iget-object v2, v8, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    :cond_7
    if-nez v1, :cond_9

    const v2, 0x7fffffff

    if-ne v9, v2, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method public getAllCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/drawer/CategoryManager;->getCategories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dashboard_tile_pref_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraIntentAction()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v9

    const/4 v0, 0x0

    if-nez v9, :cond_0

    const-string v1, "DashboardFeatureImpl"

    const-string v2, "NO dashboard tiles for DashboardFeatureImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-virtual {v9}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/settingslib/drawer/Tile;

    new-instance v0, Landroid/support/v7/preference/Preference;

    move-object/from16 v14, p2

    invoke-direct {v0, v14}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v0, v7

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object v3, v15

    move-object v4, v13

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v14, p2

    return-object v11

    :cond_3
    :goto_1
    move-object/from16 v14, p2

    const-string v1, "DashboardFeatureImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tile list is empty, skipping category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mCategoryManager:Lcom/android/settingslib/drawer/CategoryManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/drawer/CategoryManager;->getTilesByCategory(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    return-object v0
.end method

.method public openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
    .locals 4

    const v0, 0x8000

    if-nez p2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, ":settings:source_metrics"

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, v3}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->launchIntentOrSelectProfile(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V

    return-void
.end method

.method public shouldTintIcon()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
