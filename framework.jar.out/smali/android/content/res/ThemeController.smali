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

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    .line 31
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "/system/media/themes/oneplus_white/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mWhiteThemeFolderPath:Ljava/lang/String;

    .line 29
    const-string v0, "/system/media/themes/oneplus_black/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mBlackThemeFolderPath:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/ThemeController;->checkOneplusApplication(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    .line 38
    return-void
.end method

.method private checkOneplusApplication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 73
    const-string v0, "com.android.vending"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "com.konylabs.capitalone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 76
    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v1, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
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

    .local v2, "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    goto :goto_1

    .line 78
    .end local v2    # "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x502001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 81
    .restart local v2    # "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    nop

    .line 83
    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    return v0

    .line 86
    :cond_2
    return v1

    .line 81
    .end local v2    # "systemAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return v1

    .line 74
    :cond_4
    :goto_2
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 45
    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method

.method public static getOneplusAccentColor(I)I
    .locals 5
    .param p0, "defaultColor"    # I

    .line 118
    move v0, p0

    .line 120
    .local v0, "accentColor":I
    :try_start_0
    const-string/jumbo v1, "persist.sys.theme.accentcolor"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "colorValue":Ljava/lang/String;
    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
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

    .line 126
    .end local v1    # "colorValue":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
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

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static isOneplusApplication()Z
    .locals 1

    .line 91
    sget-boolean v0, Landroid/content/res/ThemeController;->sIsOneplusApplication:Z

    return v0
.end method


# virtual methods
.method public checkHasTheme(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    .line 53
    .local v1, "themeState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "apkName":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 55
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/themes/oneplus_black/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v3, "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    .end local v3    # "themeDirectory":Ljava/io/File;
    move v0, v4

    .line 57
    .local v0, "result":Z
    goto :goto_0

    .end local v0    # "result":Z
    :cond_0
    if-nez v1, :cond_1

    .line 58
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/media/themes/oneplus_white/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .restart local v3    # "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "themeDirectory":Ljava/io/File;
    move v0, v4

    .line 60
    .restart local v0    # "result":Z
    goto :goto_0

    .line 61
    .end local v0    # "result":Z
    :cond_1
    nop

    .line 66
    .end local v1    # "themeState":I
    .end local v2    # "apkName":Ljava/lang/String;
    .restart local v0    # "result":Z
    :goto_0
    goto :goto_1

    .line 63
    .end local v0    # "result":Z
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    nop

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "result":Z
    :goto_1
    return v0
.end method

.method public getColorState()I
    .locals 4

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "colorState":I
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 109
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_white_mode_accent_color_index"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_black_mode_accent_color_index"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    :goto_0
    return v0
.end method

.method public varargs getCorrectThemeResource([I)I
    .locals 2
    .param p1, "resIds"    # [I

    .line 138
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 139
    aget v0, p1, v1

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public getThemeState()I
    .locals 4

    .line 96
    const/4 v0, 0x2

    .line 98
    .local v0, "themeState":I
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

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ThemeController"

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    return v0
.end method
