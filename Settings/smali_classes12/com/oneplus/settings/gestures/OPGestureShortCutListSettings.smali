.class public Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureShortCutListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "OPGestureShortCutListSettings"


# instance fields
.field private mAPPOPGestureAppModel:Lcom/oneplus/settings/gestures/OPGestureAppModel;

.field private mAppDrawable:Landroid/graphics/drawable/Drawable;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackage:Ljava/lang/String;

.field private mGestureShortcutListView:Landroid/widget/ListView;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureUid:I

.field private mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShortcutInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .locals 10

    .line 79
    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    .local v0, "appModel":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, "size":I
    move v2, v4

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 90
    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mShortcutInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 91
    .local v3, "s":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 92
    .local v5, "label":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v5

    .line 95
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 98
    :cond_2
    new-instance v6, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v4}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    .local v6, "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    :try_start_0
    iget-object v7, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 101
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 102
    .local v8, "shortCutIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v8}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "shortCutIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 103
    :catch_0
    move-exception v7

    .line 104
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v7, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v3    # "s":Landroid/content/pm/ShortcutInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 5

    .line 72
    const v0, 0x7f0a0389

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    .line 73
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    const v2, 0x7f0803b8

    const v3, 0x7f0803b6

    const v4, 0x7f0702b0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method

.method private openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    return-void
.end method

.method private openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 4
    .param p1, "model"    # Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .line 167
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenShortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    return-void
.end method

.method private refreshList()V
    .locals 4

    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->initData()V

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    .line 118
    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    .line 119
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureSummary:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    .line 120
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0d0173

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op_gesture_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureKey:Ljava/lang/String;

    .line 55
    const-string v1, "op_gesture_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    .line 56
    const-string v1, "op_gesture_package_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureUid:I

    .line 57
    const-string v1, "op_gesture_package_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 59
    .local v1, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGesturePackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 65
    iget-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mAppDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->initView()V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    .line 146
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    .line 147
    .local v0, "model":Lcom/oneplus/settings/gestures/OPGestureAppModel;
    if-eqz p3, :cond_0

    .line 152
    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    .line 150
    nop

    .line 158
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->setResult(I)V

    .line 159
    invoke-virtual {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->finish()V

    .line 160
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 134
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 126
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;->refreshList()V

    .line 128
    return-void
.end method
