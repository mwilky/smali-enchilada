.class public Lcom/android/systemui/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field public static QS_ACCENT:I

.field public static QS_BATTERY_BACKGROUND:I

.field public static QS_BUTTON:I

.field public static QS_EDIT_BOTTOM:I

.field public static QS_INDICATOR:I

.field public static QS_INDICATOR_INACTIVE:I

.field public static QS_MENU_BACKGROUND:I

.field public static QS_PANEL_PRIMARY:I

.field public static QS_PANEL_SECONDARY:I

.field public static QS_PRIMARY_TEXT:I

.field public static QS_PROGRESS_BACKGROUND:I

.field public static QS_SECONDARY_TEXT:I

.field public static QS_SEPARATOR:I

.field public static QS_TEXT:I

.field public static QS_TILE_CIRCLE_DISABLE:I

.field public static QS_TILE_CIRCLE_OFF:I

.field public static QS_TILE_DISABLE:I

.field public static QS_TILE_OFF:I

.field private static sAccentColor:I

.field private static sColors:[I

.field private static sCurrentTheme:I

.field private static sSpecialTheme:Z

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_SECONDARY:I

    const/4 v0, 0x7

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    const/16 v0, 0x9

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR_INACTIVE:I

    const/16 v0, 0xb

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PROGRESS_BACKGROUND:I

    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    const/16 v0, 0xd

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_MENU_BACKGROUND:I

    const/16 v0, 0xe

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_OFF:I

    const/16 v0, 0x10

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_CIRCLE_DISABLE:I

    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    return-void
.end method

.method public static getColor(I)I
    .locals 1

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getPopTheme()I
    .locals 2

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f120523

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const v0, 0x7f120524

    return v0

    :pswitch_2
    const v0, 0x7f120525

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbBackground()I
    .locals 2

    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const v1, 0x7f080587

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    const v0, 0x7f080588

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f03004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/systemui/util/OPUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    sget v3, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v3, v1, :cond_1

    sget-boolean v3, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v3, v2, :cond_2

    :cond_1
    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    sput-boolean v2, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    sget-object v3, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    return-void
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0603f6

    invoke-static {p0, v0}, Lcom/android/systemui/util/OPUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result v0

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "ThemeColorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAccentColor accentColor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    return-void
.end method
