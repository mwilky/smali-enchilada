.class public Lcom/oneplus/settings/gestures/OPGestureAppListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureAppListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final DEFAULT_GESTURE_COUNT:I = 0x6

.field public static final SHORTCUT_REQUESET_CODE:I = 0x1

.field private static final TIME_DELAY:I = 0x64


# instance fields
.field private mDefaultGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureAppListView:Landroid/widget/ListView;

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureTitle:Ljava/lang/String;

.field private mGestureUid:I

.field private mGestureValueIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings$1;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getSelectionPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/gestures/OPGestureAppListSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/gestures/OPGestureAppListSettings;

    .line 33
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createDefaultAppList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v2, ""

    const v1, 0x7f120ae4

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 98
    .local v0, "noneAction":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v7, Lcom/oneplus/settings/better/OPAppModel;

    const-string v2, ""

    const v1, 0x7f120b50

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 99
    .local v1, "openCamera":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v8, Lcom/oneplus/settings/better/OPAppModel;

    const-string v3, ""

    const v2, 0x7f120b52

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 100
    .local v2, "openFrontCamera":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v9, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, ""

    const v3, 0x7f120b54

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 101
    .local v3, "takeVideo":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v10, Lcom/oneplus/settings/better/OPAppModel;

    const-string v5, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    const v6, 0x7f120b51

    invoke-virtual {p0, v6, v4}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const/4 v9, 0x0

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 102
    .local v4, "openFlashlight":Lcom/oneplus/settings/better/OPAppModel;
    new-instance v11, Lcom/oneplus/settings/better/OPAppModel;

    const-string v6, ""

    const v5, 0x7f1206d5

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 103
    .local v5, "openShelf":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v6, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mDefaultGestureAppList:Ljava/util/List;

    return-object v6
.end method

.method private doNothing()V
    .locals 3

    .line 202
    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 204
    return-void
.end method

.method private getSelectionPosition()I
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "position":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 79
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    move v0, v1

    .line 82
    goto :goto_1

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    move v0, v1

    .line 87
    goto :goto_1

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return v0
.end method

.method private gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 3
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_GESTURE_SHORTCUT_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op_gesture_key"

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "op_gesture_package"

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v1, "op_gesture_package_uid"

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v1, "op_gesture_package_app"

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 237
    return-void
.end method

.method private initData()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 149
    return-void
.end method

.method private initView()V
    .locals 3

    .line 131
    const v0, 0x7f0a0389

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 137
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 138
    const v0, 0x7f0a02eb

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    .line 141
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->createDefaultAppList()Ljava/util/List;

    .line 142
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initData()V

    .line 145
    return-void
.end method

.method private openApps(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/better/OPAppModel;

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 228
    return-void
.end method

.method private openBackCamera()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "OpenCamera"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 208
    return-void
.end method

.method private openFlashLight()V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "OpenTorch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    return-void
.end method

.method private openFrontCamera()V
    .locals 3

    .line 211
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "FrontCamera"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    return-void
.end method

.method private openShelf()V
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "OpenShelf"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 224
    return-void
.end method

.method private openTakeVideo()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    const-string v2, "TakeVideo"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    return-void
.end method

.method private refreshList()V
    .locals 8

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "shortCutId":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsGesture(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCutsId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 197
    .local v6, "hasShortCut":Z
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mOPGestureAppAdapter:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    iget v5, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 198
    invoke-static {p0, v1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 197
    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    .line 199
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->finish()V

    .line 265
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 113
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v0, 0x7f0d0173

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op_gesture_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    .line 117
    const-string v1, "op_gesture_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getIndexByGestureValueKey(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureSummary:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePacakgeUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "uid":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureUid:I

    .line 122
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGesturePackageName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 124
    .local v2, "actionBar":Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 126
    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 127
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->initView()V

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 255
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 256
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureValueIndex:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "hasShortCut":Z
    packed-switch p3, :pswitch_data_0

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->mGestureAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 178
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->hasShortCuts(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->gotoShortCutsPickPage(Lcom/oneplus/settings/better/OPAppModel;)V

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openShelf()V

    .line 175
    goto :goto_0

    .line 171
    :pswitch_1
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFlashLight()V

    .line 172
    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openTakeVideo()V

    .line 169
    goto :goto_0

    .line 165
    :pswitch_3
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openFrontCamera()V

    .line 166
    goto :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openBackCamera()V

    .line 163
    goto :goto_0

    .line 159
    :pswitch_5
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->doNothing()V

    .line 160
    goto :goto_0

    .line 182
    .restart local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->openApps(Lcom/oneplus/settings/better/OPAppModel;)V

    .line 186
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    .line 187
    if-nez v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->finish()V

    .line 190
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .line 249
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 250
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 242
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 243
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureAppListSettings;->refreshList()V

    .line 244
    return-void
.end method
