.class public Lcom/oneplus/settings/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field public static QS_ACCENT:I = 0x0

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I

.field private static sAccentColor:I

.field private static sColors:[I

.field private static sCurrentTheme:I

.field private static sSpecialTheme:Z

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/oneplus/settings/ThemeColorUtils;->sCurrentTheme:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/ThemeColorUtils;->sSpecialTheme:Z

    const/16 v0, 0x64

    sput v0, Lcom/oneplus/settings/ThemeColorUtils;->QS_ACCENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 1

    sget v0, Lcom/oneplus/settings/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    sget v0, Lcom/oneplus/settings/ThemeColorUtils;->sAccentColor:I

    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/settings/ThemeColorUtils;->sColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    sget v0, Lcom/oneplus/settings/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/settings/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    return-void
.end method

.method public static isSpecialTheme(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_special_theme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static updateAccentColor(Landroid/content/Context;)V
    .locals 3

    const-string v0, "#FF2196F3"

    sget v1, Lcom/oneplus/settings/ThemeColorUtils;->sCurrentTheme:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "#FF2196F3"

    goto :goto_1

    :cond_0
    sget v1, Lcom/oneplus/settings/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-boolean v1, Lcom/oneplus/settings/ThemeColorUtils;->sSpecialTheme:Z

    if-eqz v1, :cond_1

    const-string v0, "#FFFF2837"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "#FF42A5F5"

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/oneplus/settings/ThemeColorUtils;->sAccentColor:I

    return-void
.end method
