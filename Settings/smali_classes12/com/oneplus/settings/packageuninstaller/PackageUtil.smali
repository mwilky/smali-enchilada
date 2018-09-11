.class public Lcom/oneplus/settings/packageuninstaller/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
    }
.end annotation


# static fields
.field public static final INTENT_ATTR_APPLICATION_INFO:Ljava/lang/String; = "com.android.packageinstaller.applicationInfo"

.field public static final INTENT_ATTR_INSTALL_STATUS:Ljava/lang/String; = "com.android.packageinstaller.installStatus"

.field public static final INTENT_ATTR_PACKAGE_NAME:Ljava/lang/String; = "com.android.packageinstaller.PackageName"

.field public static final INTENT_ATTR_PERMISSIONS_LIST:Ljava/lang/String; = "com.android.packageinstaller.PermissionsList"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String; = "com.android.packageinstaller."


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/oneplus/settings/packageuninstaller/PackageUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
    .locals 9
    .param p0, "pContext"    # Landroid/app/Activity;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "sourceFile"    # Ljava/io/File;

    .line 149
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "archiveFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 151
    .local v1, "pRes":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 152
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 153
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 154
    .local v3, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 157
    .local v4, "label":Ljava/lang/CharSequence;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v5, :cond_0

    .line 159
    :try_start_0
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 161
    goto :goto_0

    .line 160
    :catch_0
    move-exception v5

    .line 163
    :cond_0
    :goto_0
    if-nez v4, :cond_2

    .line 164
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 165
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    move-object v4, v5

    .line 167
    :cond_2
    const/4 v5, 0x0

    .line 171
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_3

    .line 173
    :try_start_2
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .line 175
    goto :goto_2

    .line 174
    :catch_1
    move-exception v6

    .line 177
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 178
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    .line 182
    :cond_4
    goto :goto_3

    .line 180
    :catch_2
    move-exception v6

    .line 181
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    sget-object v7, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Could not load app icon"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v6    # "e":Ljava/lang/OutOfMemoryError;
    :goto_3
    new-instance v6, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;

    invoke-direct {v6, v4, v5}, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v6
.end method

.method static getMaxTargetSdkVersionForUid(Landroid/content/Context;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "uid"    # I

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 196
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, -0x1

    .line 198
    .local v2, "targetSdkVersion":I
    if-eqz v1, :cond_1

    .line 199
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .end local v2    # "targetSdkVersion":I
    .local v5, "targetSdkVersion":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v1, v2

    .line 201
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 202
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    .line 205
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 203
    :catch_0
    move-exception v7

    .line 199
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    move v2, v5

    .end local v5    # "targetSdkVersion":I
    .restart local v2    # "targetSdkVersion":I
    :cond_1
    return v2
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/io/File;)Landroid/content/pm/PackageParser$Package;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceFile"    # Ljava/io/File;

    .line 57
    new-instance v0, Landroid/content/pm/PackageParser;

    invoke-direct {v0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 58
    .local v0, "parser":Landroid/content/pm/PackageParser;
    new-instance v1, Landroid/content/pm/PackageParser$CallbackImpl;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageParser$CallbackImpl;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setCallback(Landroid/content/pm/PackageParser$Callback;)V

    .line 60
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public static initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1
    .param p0, "snippetView"    # Landroid/view/View;
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 67
    const v0, 0x7f0a0069

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    const v0, 0x7f0a006a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p0
.end method

.method public static initSnippetForInstalledApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "snippetView"    # Landroid/view/View;

    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static initSnippetForInstalledApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/view/View;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 3
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "snippetView"    # Landroid/view/View;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 102
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    :cond_0
    nop

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    invoke-static {p2, v2, v1}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public static initSnippetForNewApp(Landroid/app/Activity;Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;I)Landroid/view/View;
    .locals 3
    .param p0, "pContext"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "as"    # Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "snippetId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 123
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "appSnippet":Landroid/view/View;
    iget-object v1, p1, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 125
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oneplus/settings/packageuninstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-object v0
.end method
