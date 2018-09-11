.class public Lcom/android/settings/shortcut/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/shortcut/CreateShortcut$ShortcutsUpdateTask;
    }
.end annotation


# static fields
.field static final SHORTCUT_ID_PREFIX:Ljava/lang/String; = "component-shortcut-"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private createIcon(III)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "resource"    # I
    .param p2, "layoutRes"    # I
    .param p3, "size"    # I

    .line 131
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030224

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/settings/shortcut/CreateShortcut;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 134
    .local v2, "iconDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 137
    :cond_0
    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 140
    .local v3, "spec":I
    invoke-virtual {v1, v3, v3}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 143
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 144
    .local v5, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 145
    invoke-virtual {v1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 146
    return-object v4
.end method

.method static getBaseIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private logCreateShortcut(Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 122
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x33d

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 128
    return-void

    .line 123
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 11
    .param p1, "shortcutIntent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 88
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 90
    .local v0, "sm":Landroid/content/pm/ShortcutManager;
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 92
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget v2, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ActivityInfo;->icon:I

    const v3, 0x7f0d024a

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 93
    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/shortcut/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 92
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    goto :goto_0

    .line 96
    :cond_0
    const v2, 0x7f0801bb

    invoke-static {p0, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 97
    .local v2, "maskableIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component-shortcut-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "shortcutId":Ljava/lang/String;
    new-instance v4, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v4, p0, v3}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v4, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 101
    invoke-virtual {v4, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    .line 104
    .local v4, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v5

    .line 105
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_1

    .line 106
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object v5, v6

    .line 108
    :cond_1
    const-string v6, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v7, 0x7f0f0002

    .line 109
    invoke-static {p0, v7}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v7

    .line 108
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string v6, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 113
    iget v6, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v6, :cond_2

    .line 114
    const-string v6, "android.intent.extra.shortcut.ICON"

    iget v7, v1, Landroid/content/pm/ActivityInfo;->icon:I

    const v8, 0x7f0d0249

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0703fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 114
    invoke-direct {p0, v7, v8, v9}, Lcom/android/settings/shortcut/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    :cond_2
    return-object v5
.end method

.method protected getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 61
    invoke-static {}, Lcom/android/settings/shortcut/CreateShortcut;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73
    :cond_0
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 78
    invoke-virtual {p0, p3}, Lcom/android/settings/shortcut/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v0

    .line 79
    .local v0, "item":Landroid/app/LauncherActivity$ListItem;
    iget-object v1, v0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/android/settings/shortcut/CreateShortcut;->logCreateShortcut(Landroid/content/pm/ResolveInfo;)V

    .line 80
    invoke-virtual {p0, p3}, Lcom/android/settings/shortcut/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/shortcut/CreateShortcut;->createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/shortcut/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->finish()V

    .line 83
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 166
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v1, "connectivity"

    .line 167
    invoke-virtual {p0, v1}, Lcom/android/settings/shortcut/CreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 168
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 169
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 171
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method protected onSetContentView()V
    .locals 1

    .line 156
    const v0, 0x7f0d0029

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->setContentView(I)V

    .line 157
    return-void
.end method
