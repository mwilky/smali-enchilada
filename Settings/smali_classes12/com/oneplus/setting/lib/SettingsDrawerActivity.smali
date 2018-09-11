.class public Lcom/oneplus/setting/lib/SettingsDrawerActivity;
.super Landroid/app/Activity;
.source "SettingsDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;,
        Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;,
        Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final DEBUG_TIMING:Z = false

.field public static final EXTRA_SHOW_MENU:Ljava/lang/String; = "show_drawer_menu"

.field private static final TAG:Ljava/lang/String; = "SettingsDrawerActivity"

.field private static sTileBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCategoryListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContentHeaderContainer:Landroid/widget/FrameLayout;

.field private final mPackageReceiver:Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-string v0, "SettingsDrawerActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->DEBUG:Z

    .line 57
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;-><init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;Lcom/oneplus/setting/lib/SettingsDrawerActivity$1;)V

    iput-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mPackageReceiver:Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100()Landroid/util/ArraySet;
    .locals 1

    .line 47
    sget-object v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/setting/lib/SettingsDrawerActivity;

    .line 47
    invoke-direct {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->onCategoriesChanged()V

    return-void
.end method

.method private onCategoriesChanged()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;

    invoke-interface {v2}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;->onCategoriesChanged()V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addCategoryListener(Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;

    .line 119
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public getSettingPkg()Ljava/lang/String;
    .locals 1

    .line 182
    const-string v0, "com.android.settings"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "startTime":J
    invoke-virtual {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 71
    .local v2, "theme":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    const/16 v4, 0x26

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 73
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->requestWindowFeature(I)Z

    .line 75
    :cond_0
    const v5, 0x7f0d01b8

    invoke-super {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 76
    const v5, 0x7f0a012b

    invoke-virtual {p0, v5}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mContentHeaderContainer:Landroid/widget/FrameLayout;

    .line 78
    const v5, 0x7f0a0015

    invoke-virtual {p0, v5}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar;

    .line 79
    .local v5, "toolbar":Landroid/widget/Toolbar;
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 81
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0, v5}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->setActionBar(Landroid/widget/Toolbar;)V

    .line 89
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->finish()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mPackageReceiver:Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 116
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mPackageReceiver:Lcom/oneplus/setting/lib/SettingsDrawerActivity$PackageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    new-instance v1, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v1, p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    return-void
.end method

.method public remCategoryListener(Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoryListener;

    .line 123
    iget-object v0, p0, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->mCategoryListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "layoutResID"    # I

    .line 128
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 129
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 132
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 133
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 137
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 142
    const v0, 0x7f0a012a

    invoke-virtual {p0, v0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-void
.end method

.method public setTileEnabled(Landroid/content/ComponentName;Z)Z
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "enabled"    # Z

    .line 156
    invoke-virtual {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 157
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 158
    .local v1, "state":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 159
    .local v4, "isEnabled":Z
    :goto_0
    if-ne v4, p2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 171
    :cond_1
    return v2

    .line 160
    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    .line 161
    sget-object v2, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_3
    sget-object v2, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->sTileBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_2
    if-eqz p2, :cond_4

    .line 166
    nop

    .line 167
    move v2, v3

    goto :goto_3

    :cond_4
    const/4 v2, 0x2

    .line 165
    :goto_3
    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 169
    return v3
.end method

.method public updateCategories()V
    .locals 2

    .line 178
    new-instance v0, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;

    invoke-direct {v0, p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;-><init>(Lcom/oneplus/setting/lib/SettingsDrawerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity$CategoriesUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 179
    return-void
.end method
