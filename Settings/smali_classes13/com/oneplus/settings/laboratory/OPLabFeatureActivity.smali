.class public Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPLabFeatureActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final DATA_LOAD_COMPLETED:I = 0x0

.field private static final ONEPLUS_LAB_FEATURE_KEY:Ljava/lang/String; = "oneplus_lab_feature_key"

.field private static final ONEPLUS_LAB_FEATURE_SUMMARY:Ljava/lang/String; = "oneplus_lab_feature_Summary"

.field private static final ONEPLUS_LAB_FEATURE_TITLE:Ljava/lang/String; = "oneplus_lab_feature_title"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_COUNT:Ljava/lang/String; = "oneplus_lab_feature_toggle_count"

.field private static final ONEPLUS_LAB_FEATURE_TOGGLE_NAMES:Ljava/lang/String; = "oneplus_lab_feature_toggle_names"

.field private static final ONEPLUS_NFC_SECURITY_MODULE_KEY:Ljava/lang/String; = "oneplus_nfc_security_module_key"

.field private static final PLUGIN_ACTION:Ljava/lang/String; = "com.android.ONEPLUS_LAB_PLUGIN"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPluginData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/laboratory/OPLabPluginModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPluginList:Landroid/widget/ListView;

.field private mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$1;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    return-object v0
.end method

.method private gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_LAB_FEATURE_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "oneplus_lab_feature_toggle_count"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getToggleCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_toggle_names"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getMultiToggleName()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_title"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_Summary"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "oneplus_lab_feature_key"

    invoke-virtual {p1}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->getFeatureKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private initData(Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;-><init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fetchLockedAppListByActivityInfo()V
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.ONEPLUS_LAB_PLUGIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "oneplus_lab_package_name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "oneplus_lab_feature_title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "oneplus_lab_feature_summary"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "oneplus_lab_feature_toggle_key"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v8, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v8}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    invoke-virtual {v8, v3}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PluginDemo"

    const-string v2, "some unknown error happened."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public fetchLockedAppListByPackageInfo()V
    .locals 33

    move-object/from16 v1, p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_f

    const-string v7, "oneplus_lab_feature"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    const-string v9, "oneplus_lab_feature"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v11, v8

    :goto_1
    array-length v12, v10

    if-ge v11, v12, :cond_f

    new-instance v12, Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    invoke-direct {v12}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;-><init>()V

    aget-object v13, v10, v11

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x2

    const/4 v8, 0x3

    move-object/from16 v17, v0

    if-le v14, v8, :cond_7

    const/16 v16, 0x0

    aget-object v19, v13, v16

    move-object/from16 v20, v19

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v0, "string"

    move-wide/from16 v21, v2

    iget-object v2, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v3, v20

    invoke-virtual {v8, v3, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v23, v3

    const-string v3, "string"

    move-object/from16 v24, v4

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v25, v2

    const/4 v8, 0x2

    aget-object v2, v13, v8

    const-string v8, "string"

    move-object/from16 v26, v6

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    const/4 v4, 0x2

    aget-object v4, v13, v4

    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    nop

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move/from16 v32, v11

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_2
    const/4 v6, 0x3

    aget-object v6, v13, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v15, v6

    const/4 v6, 0x4

    invoke-static {v13, v6, v14}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    array-length v8, v6

    new-array v8, v8, [Ljava/lang/String;

    const/16 v18, 0x0

    :goto_3
    move/from16 v27, v18

    move/from16 v28, v2

    array-length v2, v6

    move-object/from16 v29, v9

    move/from16 v9, v27

    if-ge v9, v2, :cond_4

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v30, v10

    aget-object v10, v6, v9

    move/from16 v31, v15

    const-string v15, "string"

    move/from16 v32, v11

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v10, v15, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    :cond_3
    aget-object v10, v6, v9

    :goto_4
    aput-object v10, v8, v9

    add-int/lit8 v18, v9, 0x1

    move/from16 v2, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move/from16 v15, v31

    move/from16 v11, v32

    goto :goto_3

    :cond_4
    move-object/from16 v30, v10

    move/from16 v32, v11

    move/from16 v31, v15

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v2, v20

    goto :goto_5

    :cond_5
    move-object/from16 v2, v23

    :goto_5
    invoke-virtual {v12, v2}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object/from16 v2, v25

    :goto_6
    invoke-virtual {v12, v2}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setMultiToggleName([Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    nop

    move/from16 v15, v31

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_7
    move-wide/from16 v21, v2

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move/from16 v32, v11

    const/4 v0, 0x1

    if-le v14, v0, :cond_8

    const/4 v0, 0x0

    aget-object v2, v13, v0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    const-string v2, ""

    :goto_7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-le v14, v4, :cond_9

    const/4 v4, 0x1

    aget-object v4, v13, v4

    goto :goto_8

    :cond_9
    const-string v4, ""

    :goto_8
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v8, "string"

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v10, v13, v9

    const-string v9, "string"

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v9, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_a
    const/4 v9, 0x2

    aget-object v9, v13, v9

    :goto_9
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    goto :goto_d

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_c
    move-object v10, v2

    :goto_a
    invoke-virtual {v12, v10}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureTitle(Ljava/lang/String;)V

    if-eqz v6, :cond_d

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_d
    move-object v10, v4

    :goto_b
    invoke-virtual {v12, v10}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureSummary(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setFeatureKey(Ljava/lang/String;)V

    move-object v4, v9

    :goto_c
    invoke-static {v7}, Lcom/oneplus/settings/utils/OPUtils;->isSurportSimNfc(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "oneplus_nfc_security_module_key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_d

    :cond_e
    invoke-virtual {v12, v15}, Lcom/oneplus/settings/laboratory/OPLabPluginModel;->setToggleCount(I)V

    iget-object v2, v1, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    add-int/lit8 v11, v32, 0x1

    move v8, v0

    move-object/from16 v0, v17

    move-wide/from16 v2, v21

    move-object/from16 v4, v24

    move-object/from16 v6, v26

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    goto/16 :goto_1

    :cond_f
    move-object/from16 v17, v0

    move-wide/from16 v21, v2

    move-object/from16 v24, v4

    move-object/from16 v0, v17

    move-wide/from16 v2, v21

    move-object/from16 v4, v24

    goto/16 :goto_0

    :cond_10
    goto :goto_e

    :catch_0
    move-exception v0

    const-string v2, "PluginDemo"

    const-string v3, "some unknown error happened."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0181

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->setContentView(I)V

    const v0, 0x7f0a03c2

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    new-instance v0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginData:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->mPluginListAdapter:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-virtual {v0, p3}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;->getItem(I)Lcom/oneplus/settings/laboratory/OPLabPluginModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->gotoDetailPage(Lcom/oneplus/settings/laboratory/OPLabPluginModel;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method
