.class public Landroid/content/res/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# static fields
.field private static final PROP_ONEPLUS_ACCENT_COLOR:Ljava/lang/String; = "persist.sys.theme.accentcolor"

.field public static final RESNAME_ONEPLUS_ACCENT_COLOR:Ljava/lang/String; = "oneplus_accent_color"

.field private static final TAG:Ljava/lang/String; = "ThemeController"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field private static mThemeController:Landroid/content/res/ThemeController;

.field private static sIsOneplusApplication:Z


# instance fields
.field private final mBlackThemeFolderPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mWhiteThemeFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/system/media/themes/oneplus_white/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mWhiteThemeFolderPath:Ljava/lang/String;

    const-string v0, "/system/media/themes/oneplus_black/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mBlackThemeFolderPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/ThemeController;->checkOneplusApplication(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    return-void
.end method

.method private checkOneplusApplication(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v1, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    goto :goto_1

    :cond_1
    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x502001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :goto_1
    nop

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1

    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method

.method public static getOneplusAccentColor(I)I
    .locals 5

    move v0, p0

    :try_start_0
    const-string/jumbo v1, "persist.sys.theme.accentcolor"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThemeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New accentcolor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public static isOneplusApplication()Z
    .locals 1

    sget-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    return v0
.end method


# virtual methods
.method public checkHasTheme(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/themes/oneplus_black/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/themes/oneplus_white/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return v0
.end method

.method public getColorState()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_white_mode_accent_color_index"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_black_mode_accent_color_index"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public varargs getCorrectThemeResource([I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget v0, p1, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public getThemeState()I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ThemeController"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
