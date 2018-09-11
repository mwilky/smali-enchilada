.class public Lcom/oneplus/settings/utils/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# static fields
.field public static final ANDROID_SYSTEM_UID:I = 0x3e8

.field public static final COMPANY:Ljava/lang/String; = "oneplus"

.field public static final OEM_REPEATE_INCALL_LIMITE:Ljava/lang/String; = "oem_repeate_incall_unlimite"

.field public static final OEM_TREE_KEY_DEFINE:Ljava/lang/String; = "oem_three_key_define"

.field public static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field public static final ONEPLUS_METRICSLOGGER:I = 0x270f

.field public static final TAG:Ljava/lang/String; = "OPUtils"

.field public static final TRACKER_CATEGORY:Ljava/lang/String; = "OPSettings"

.field public static final UNIT_OF_STORAGE:[Ljava/lang/String;

.field public static final UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

.field public static final ZH_CN_HANS_ID:Ljava/lang/String; = "zh-Hans-CN"

.field public static final ZH_CN_ID:Ljava/lang/String; = "zh-CN"

.field public static final ZH_CN_LABEL:Ljava/lang/String; = "zh_CN"

.field public static final ZH_EN_ID:Ljava/lang/String; = "en-US"

.field public static final ZH_TW_HANT_ID:Ljava/lang/String; = "zh-Hant-TW"

.field public static final ZH_TW_ID:Ljava/lang/String; = "zh-TW"

.field public static final bgServiceApplist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final bgServicePackages:[Ljava/lang/String;

.field public static isExist_Cloud_Package:Ljava/lang/Boolean;

.field public static isUstModeEnabled:Ljava/lang/Boolean;

.field private static mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field public static mAppUpdated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 144
    const-string v1, "(?<![\u5409\u5343\u5146\u592a])\u6bd4\u7279"

    const-string v2, "(?<![\u5409\u5343\u5146\u592a])\u5b57\u8282"

    const-string v3, "\u5409\u6bd4\u7279"

    const-string v4, "\u5409\u5b57\u8282"

    const-string v5, "\u5343\u6bd4\u7279"

    const-string v6, "\u5343\u5b57\u8282"

    const-string v7, "\u5146\u6bd4\u7279"

    const-string v8, "\u5146\u5b57\u8282"

    const-string v9, "\u592a\u6bd4\u7279"

    const-string v10, "\u592a\u5b57\u8282"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    .line 145
    const-string v2, "b"

    const-string v3, "B"

    const-string v4, "Gb"

    const-string v5, "GB"

    const-string v6, "Kb"

    const-string v7, "KB"

    const-string v8, "Mb"

    const-string v9, "MB"

    const-string v10, "Tb"

    const-string v11, "TB"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    .line 147
    const-string v1, "com.oneplus.card"

    const-string v2, "com.oneplus.cloud"

    const-string v3, "com.oneplus.appupgrader"

    const-string v4, "com.oneplus.dirac.simplemanager"

    const-string v5, "com.oneplus.soundrecorder"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->bgServicePackages:[Ljava/lang/String;

    .line 148
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->bgServicePackages:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/utils/OPUtils;->bgServiceApplist:Ljava/util/List;

    .line 157
    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    .line 233
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 122
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getUserLocaleList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static checkNetworkAviliable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1037
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    const/4 v0, 0x0

    return v0

    .line 1040
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static compositeColor(II)I
    .locals 7
    .param p0, "argb1"    # I
    .param p1, "argb2"    # I

    .line 386
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 387
    .local v0, "a1":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 389
    .local v1, "a2":I
    rsub-int v2, v1, 0xff

    rsub-int v3, v0, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    .line 391
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 392
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 391
    invoke-static {v3, v0, v4, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v3

    .line 393
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 394
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 393
    invoke-static {v4, v0, v5, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v4

    .line 395
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 396
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 395
    invoke-static {v5, v0, v6, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->compositeColorComponent(IIIII)I

    move-result v5

    .line 398
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeColorComponent(IIIII)I
    .locals 4
    .param p0, "c1"    # I
    .param p1, "a1"    # I
    .param p2, "c2"    # I
    .param p3, "a2"    # I
    .param p4, "a"    # I

    .line 378
    if-nez p4, :cond_0

    .line 379
    const/4 v0, 0x0

    return v0

    .line 381
    :cond_0
    const/16 v0, 0xff

    mul-int v1, v0, p2

    mul-int/2addr v1, p3

    mul-int v2, p0, p1

    rsub-int v3, p3, 0xff

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    div-int/2addr v1, p4

    div-int/2addr v1, v0

    return v1
.end method

.method public static creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 804
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 805
    .local v0, "onePlusPrimaryColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 806
    .local v1, "color_state_disable":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 807
    .local v2, "color_state_pressed":I
    invoke-static {v2, v2, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 808
    .local v3, "textColor":Landroid/content/res/ColorStateList;
    return-object v3
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 8
    .param p0, "color_state_pressed"    # I
    .param p1, "color_state_selected"    # I
    .param p2, "color_state_enabled"    # I
    .param p3, "color_state_default"    # I

    .line 792
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    const v6, 0x10100a1

    aput v6, v4, v5

    aput-object v4, v2, v3

    new-array v4, v3, [I

    const v6, 0x101009e

    aput v6, v4, v5

    const/4 v6, 0x2

    aput-object v4, v2, v6

    new-array v4, v5, [I

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [I

    aput p0, v1, v5

    aput p1, v1, v3

    aput p2, v1, v6

    aput p3, v1, v7

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 874
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 875
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static disableAospFaceUnlock(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 456
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 457
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.android.facelock"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 459
    const-string v1, "com.android.facelock"

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    :goto_0
    return-void
.end method

.method public static disableCardPackageEntranceInLauncher(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 528
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 547
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 548
    return-void
.end method

.method public static disableWirelessAdbDebuging()V
    .locals 2

    .line 524
    const-string v0, "service.adb.tcp.port"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public static dp2Px(Landroid/util/DisplayMetrics;F)I
    .locals 1
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p1, "dp"    # F

    .line 870
    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static enableAppBgService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 504
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 520
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 521
    return-void
.end method

.method public static enablePackageInstaller(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 553
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 588
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 589
    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "size"    # J

    .line 193
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "sizeString":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_0

    .line 195
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 196
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 199
    .local v3, "country":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CN"

    .line 200
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 202
    sget-object v5, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    return-object v0
.end method

.method private static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 7
    .param p0, "size"    # J

    .line 644
    const-wide/16 v0, 0x400

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 645
    .local v0, "mega":J
    const-wide/16 v2, 0x200

    div-long v4, v0, v2

    long-to-int v4, v4

    .line 646
    .local v4, "mul":I
    rem-long v2, v0, v2

    long-to-int v2, v2

    .line 648
    .local v2, "modulus":I
    if-nez v4, :cond_0

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "MB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 651
    :cond_0
    const/16 v3, 0x100

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_2

    .line 652
    add-int/lit8 v4, v4, 0x1

    .line 653
    rem-int/lit8 v3, v4, 0x2

    if-nez v3, :cond_1

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 656
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 659
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "GB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "size"    # J

    .line 216
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "sizeString":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-le v1, v2, :cond_0

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 219
    .local v1, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "country":Ljava/lang/String;
    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CN"

    .line 223
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 225
    sget-object v5, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "defaultLocale":Ljava/util/Locale;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "country":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 605
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 606
    .local v0, "tintColor":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 607
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 608
    .local v1, "colorControl":I
    return v1
.end method

.method public static getActivityIcon(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 856
    if-nez p0, :cond_0

    .line 857
    return-object p0

    .line 860
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 861
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 862
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 864
    .local v1, "bitmapResult":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 865
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 866
    return-object v1
.end method

.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 268
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 270
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 274
    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 275
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v1
.end method

.method public static getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vectorDrawableId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 828
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 829
    .local v1, "vectorDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 830
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 829
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 832
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 833
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 834
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 835
    .end local v1    # "vectorDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    goto :goto_0

    .line 836
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 838
    :goto_0
    return-object v0
.end method

.method public static getColor(Landroid/content/res/Resources$Theme;I)I
    .locals 2
    .param p0, "theme"    # Landroid/content/res/Resources$Theme;
    .param p1, "attrId"    # I

    .line 812
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 813
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 814
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1135
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1136
    .local v0, "mUserManager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v1

    .line 1139
    .local v1, "myUser":I
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1140
    .local v3, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1141
    goto :goto_0

    .line 1143
    :cond_0
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1144
    .local v4, "parent":Landroid/content/pm/UserInfo;
    if-nez v4, :cond_1

    .line 1145
    goto :goto_0

    .line 1148
    :cond_1
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v1, :cond_2

    .line 1149
    return-object v3

    .line 1151
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    .end local v4    # "parent":Landroid/content/pm/UserInfo;
    :cond_2
    goto :goto_0

    .line 1152
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getCustomAccentColor()I
    .locals 3

    .line 612
    const-string v0, "persist.sys.theme.accentcolor"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "accentColor":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 616
    :cond_0
    const-string v1, "#2196F3"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 3

    .line 1011
    const-string v0, "OPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .line 1179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1180
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1181
    .local v0, "dot":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1182
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1185
    .end local v0    # "dot":I
    :cond_0
    return-object p0
.end method

.method public static getFingerprintScaleAnimStep(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 447
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/16 v0, 0x8

    return v0

    .line 450
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 998
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1000
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, "imei":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1002
    const-string v2, "OPUtils"

    const-string v3, "IMEI is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v2, ""

    return-object v2

    .line 1005
    :cond_0
    const-string v2, "OPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMEI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return-object v1
.end method

.method public static getOnePlusPrimaryColor(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 781
    const v0, 0x7f060402

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 782
    .local v0, "color":I
    return v0
.end method

.method public static getRightTheme(Landroid/content/ContentResolver;II)I
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "themeLight"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p2, "themeDark"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 770
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static getRightTheme(Landroid/content/Context;II)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeLight"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p2, "themeDark"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 756
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oneplus/settings/utils/OPUtils;->getRightTheme(Landroid/content/ContentResolver;II)I

    move-result v0

    return v0
.end method

.method public static getTintSvgBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vectorDrawableId"    # I
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 819
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 820
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p2}, Lcom/oneplus/settings/utils/OPUtils;->tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 821
    .local v1, "tintBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 822
    return-object v1
.end method

.method public static getTotalMemory()Ljava/lang/String;
    .locals 7

    .line 665
    const-string v0, "/proc/meminfo"

    .line 666
    .local v0, "str1":Ljava/lang/String;
    const-string v1, ""

    .line 670
    .local v1, "str2":Ljava/lang/String;
    const/4 v2, 0x0

    .line 671
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 673
    .local v3, "localBufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 674
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    .line 675
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 676
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 677
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 678
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 679
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 683
    nop

    .line 685
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 688
    goto :goto_0

    .line 686
    :catch_0
    move-exception v4

    .line 687
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 693
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 694
    :catch_1
    move-exception v4

    goto :goto_5

    .line 683
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    .line 685
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 688
    goto :goto_1

    .line 686
    :catch_2
    move-exception v5

    .line 687
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 693
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 696
    goto :goto_2

    .line 694
    :catch_3
    move-exception v5

    .line 695
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const/4 v3, 0x0

    .line 700
    const/4 v2, 0x0

    throw v4

    .line 680
    :catch_4
    move-exception v4

    .line 683
    if-eqz v3, :cond_2

    .line 685
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 688
    goto :goto_3

    .line 686
    :catch_5
    move-exception v4

    .line 687
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 691
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 693
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 696
    :goto_4
    goto :goto_6

    .line 694
    :catch_6
    move-exception v4

    .line 695
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 699
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_6
    const/4 v3, 0x0

    .line 700
    const/4 v2, 0x0

    .line 701
    nop

    .line 704
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 705
    .local v4, "resultValue":J
    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getUserLocaleList(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 934
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 936
    .local v1, "localeList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 937
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 938
    .local v3, "locale":Ljava/util/Locale;
    const-string v4, "zh-CN"

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    const-string v4, "zh-Hans-CN"

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 941
    :cond_0
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    .end local v3    # "locale":Ljava/util/Locale;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 943
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public static hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, "hasMultiApp":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1063
    .local v1, "mPackageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 1064
    .local v2, "applicationInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 1065
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    const/4 v0, 0x1

    .line 1067
    goto :goto_1

    .line 1069
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 1070
    :cond_1
    :goto_1
    const-string v3, "OPUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasMultiApp ,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " hasMultiApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    return v0
.end method

.method public static hasMultiAppProfiles(Landroid/os/UserManager;)Z
    .locals 5
    .param p0, "userManager"    # Landroid/os/UserManager;

    .line 1046
    const/4 v0, 0x0

    .line 1047
    .local v0, "hasMultiAppProfiles":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1048
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 1049
    const/4 v0, 0x1

    .line 1050
    goto :goto_1

    .line 1052
    .end local v2    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1053
    :cond_1
    :goto_1
    return v0
.end method

.method public static installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1106
    const-string v0, "OPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "installMultiApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1109
    .local v0, "mPackageManager":Landroid/content/pm/PackageManager;
    nop

    .line 1110
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1113
    .local v1, "status":I
    const/16 v2, -0x6f

    if-eq v1, v2, :cond_1

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1115
    :cond_0
    const-string v2, "OPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installMultiApp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void

    .line 1119
    :cond_1
    const-string v2, "OPUtils"

    const-string v3, "Could not install mobile device management app on managed profile because the user is restricted"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_2
    const-string v2, "OPUtils"

    const-string v3, "Could not install mobile device management app on managed profile because the package could not be found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :goto_0
    const-string v2, "OPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .end local v1    # "status":I
    goto :goto_1

    .line 1129
    :catch_0
    move-exception v1

    .line 1130
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OPUtils"

    const-string v3, "This should not happen."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriIntent"    # Landroid/content/Intent;
    .param p2, "intent_action_scan"    # Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 315
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p1, :cond_0

    .line 316
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_0

    .line 318
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 320
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 322
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public static isAllowSendAppTracker(Landroid/content/Context;)Z
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .line 1269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_join_user_plan_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isAndroidModeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 744
    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "isExist":Z
    const-string v1, "com.oneplus.cloud"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 244
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 246
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 247
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    goto :goto_0

    .line 249
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    .line 251
    :goto_0
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 253
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->isExist_Cloud_Package:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 256
    :cond_2
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 258
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 259
    const/4 v0, 0x1

    .line 262
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    return v0
.end method

.method public static isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 290
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 292
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 296
    goto :goto_0

    .line 293
    :catch_0
    move-exception v3

    .line 295
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 297
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_0

    .line 298
    const/4 v0, 0x1

    .line 301
    :cond_0
    return v0
.end method

.method public static isBetaRom()Z
    .locals 5

    .line 967
    const/4 v0, 0x0

    .line 968
    .local v0, "isBeta":Ljava/lang/String;
    const/4 v1, 0x0

    .line 970
    .local v1, "isEanbleGA":Ljava/lang/String;
    const-string v2, "ro.build.beta"

    .line 971
    .local v2, "SYSTEM_PROPERTY_KEY_IS_BETA_ROM":Ljava/lang/String;
    const-string v3, "persist.op.ga"

    .line 972
    .local v3, "SYSTEM_PROPERTY_KEY_ENABLE_GA":Ljava/lang/String;
    const-string v4, "ro.build.beta"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 973
    const-string v4, "persist.op.ga"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    const-string v4, "1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 978
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 976
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4
.end method

.method public static isBlackModeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 740
    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 1017
    :try_start_0
    const-string v0, "connectivity"

    .line 1018
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1019
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1021
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    .line 1024
    const/4 v2, 0x1

    return v2

    .line 1031
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    goto :goto_0

    .line 1028
    :catch_0
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1033
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeviceSurportFaceUnlock()Z
    .locals 2

    .line 709
    const-string v0, "ONEPLUS A5000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ONEPLUS A5010"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmojiCharacter(C)Z
    .locals 1
    .param p0, "codePoint"    # C

    .line 1420
    if-eqz p0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-le p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 731
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "language":Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isFaceUnlockEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 592
    const/4 v0, 0x0

    move v1, v0

    .line 594
    .local v1, "isEnabled":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 595
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "com.android.facelock"

    .line 596
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    .local v3, "state":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    move v1, v0

    .line 600
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "state":I
    goto :goto_2

    .line 599
    :catch_0
    move-exception v0

    .line 601
    :goto_2
    return v1
.end method

.method public static isFeatureSupport(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .line 948
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "strFile"    # Ljava/lang/String;

    .line 1210
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    .line 1212
    return v0

    .line 1217
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    nop

    .line 1219
    const/4 v0, 0x1

    return v0

    .line 1215
    :catch_0
    move-exception v1

    .line 1216
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 713
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ONEPLUS A5000"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ONEPLUS A5010"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGuestMode()Z
    .locals 1

    .line 326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLTRLayout(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 884
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 885
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isLaboratoryFeatureExist()Z
    .locals 16

    .line 1223
    const/4 v0, 0x0

    move v1, v0

    .line 1225
    .local v1, "hasLabFeature":Z
    :try_start_0
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 1226
    .local v2, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1227
    return v0

    .line 1229
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1230
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1231
    .local v5, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_5

    const-string v6, "oneplus_lab_feature"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1232
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 1233
    .local v6, "pkgContext":Landroid/content/Context;
    const-string v7, "oneplus_lab_feature"

    .line 1234
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1235
    .local v7, "oneplus_lab_feature":Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1237
    .local v8, "featureColume":[Ljava/lang/String;
    move v9, v1

    move v1, v0

    .local v1, "i":I
    .local v9, "hasLabFeature":Z
    :goto_1
    :try_start_1
    array-length v10, v8

    if-ge v1, v10, :cond_4

    .line 1238
    aget-object v10, v8, v1

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1239
    .local v10, "columeKey":[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v13, v10, v12

    const-string v14, "string"

    iget-object v15, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1240
    .local v11, "featureKeyId":I
    if-eqz v11, :cond_1

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_1
    aget-object v12, v10, v12

    .line 1241
    .local v12, "featureKey":Ljava/lang/String;
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1242
    goto :goto_3

    .line 1244
    :cond_2
    sget-object v13, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v13}, Lcom/oneplus/settings/utils/OPUtils;->isSurportSimNfc(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "oneplus_nfc_security_module_key"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_3

    .line 1245
    goto :goto_3

    .line 1247
    :cond_3
    const/4 v9, 0x1

    .line 1237
    .end local v10    # "columeKey":[Ljava/lang/String;
    .end local v11    # "featureKeyId":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1250
    .end local v1    # "i":I
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "metaData":Landroid/os/Bundle;
    .end local v6    # "pkgContext":Landroid/content/Context;
    .end local v7    # "oneplus_lab_feature":Ljava/lang/String;
    .end local v8    # "featureColume":[Ljava/lang/String;
    .end local v12    # "featureKey":Ljava/lang/String;
    :cond_4
    move v1, v9

    goto :goto_4

    .line 1252
    .end local v2    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    move v1, v9

    goto :goto_5

    .line 1250
    .end local v9    # "hasLabFeature":Z
    .local v1, "hasLabFeature":Z
    .restart local v2    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_5
    :goto_4
    goto :goto_0

    .line 1255
    .end local v2    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_6
    goto :goto_6

    .line 1252
    :catch_1
    move-exception v0

    .line 1253
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    const-string v2, "OPUtils-isLaboratoryFeatureExist"

    const-string v3, "some unknown error happened."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1256
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    const-string v0, "OPUtils-isLaboratoryFeatureExist:"

    if-eqz v1, :cond_7

    const-string v2, "true"

    goto :goto_7

    :cond_7
    const-string v2, "false"

    :goto_7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    return v1
.end method

.method public static isMultiAppProfiles(Landroid/os/UserHandle;)Z
    .locals 2
    .param p0, "userHandle"    # Landroid/os/UserHandle;

    .line 1057
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 279
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 280
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 281
    .local v1, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    const/4 v2, 0x0

    return v2

    .line 284
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static isO2()Z
    .locals 3

    .line 402
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isOP6ModeBefore()Z
    .locals 2

    .line 406
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "E10"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 406
    :goto_1
    return v0
.end method

.method public static isOpBluetoothHeadset()Z
    .locals 1

    .line 1273
    const-string v0, "OP_FEATURE_BLUETOOTH_HEADSET"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProductRTTSupport()Z
    .locals 3

    .line 1442
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isStarWarModeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 748
    const-string v0, "oem_special_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public static isSupportAlwaysOnDisplay()Z
    .locals 1

    .line 1309
    const-string v0, "OP_FEATURE_ALWAYS_ON_DISPLAY"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomBlinkLight()Z
    .locals 1

    .line 1438
    const-string v0, "OP_FEATURE_CUSTOM_BLINK_LIGHT"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomFingerprint()Z
    .locals 1

    .line 1430
    const-string v0, "OP_FEATURE_SUPPORT_CUSTOM_FINGERPRINT"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFontStyleSetting()Z
    .locals 7

    .line 983
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "country":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, "language":Ljava/lang/String;
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "supportlanguage":[Ljava/lang/String;
    const-string v3, "FontStyleSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "language = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " country = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 988
    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 989
    const-string v3, "FontStyleSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "support language = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v3, 0x1

    return v3

    .line 987
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 993
    .end local v4    # "i":I
    :cond_1
    return v3
.end method

.method public static isSupportGameModeNetBoost()Z
    .locals 1

    .line 1293
    const-string v0, "OP_FEATURE_GAMEMODE_NETBOOST"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGameModePowerSaver()Z
    .locals 1

    .line 1434
    const-string v0, "OP_FEATURE_GAMEMODE_POWERSAVER"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGestureAnswerCall()Z
    .locals 1

    .line 1281
    const-string v0, "OP_FEATURE_USE_GESTURE_TO_ANSWER_CALL"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGesturePullNotificationBar()Z
    .locals 1

    .line 1285
    const-string v0, "OP_FEATURE_SHOW_NOTIFICATION_BAR_BY_FINGERPRINT_SENSOR"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportHearingAid()Z
    .locals 1

    .line 1277
    const-string v0, "OP_FEATURE_HEARING_AID"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportNewPlanPowerOffAlarm()Z
    .locals 1

    .line 1301
    const-string v0, "OP_FEATURE_NEW_PLAN_POWEWR_OFF_ALARM"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportOP2Recovey()Z
    .locals 1

    .line 1297
    const-string v0, "OP_FEATURE_OP2_RECOVERY"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenCutting()Z
    .locals 1

    .line 1289
    const-string v0, "OP_FEATURE_SCREEN_CUTTING"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenDisplayAdaption()Z
    .locals 1

    .line 1305
    const-string v0, "OP_FEATURE_SCREEN_DISPLAY_ADAPTION"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSleepStandby()Z
    .locals 1

    .line 1416
    const-string v0, "OP_FEATURE_OPSM"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSocTriState()Z
    .locals 1

    .line 1261
    const-string v0, "OP_FEATURE_SOC_TRI_STATE_KEY"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportUstMode()Z
    .locals 1

    .line 163
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 166
    :cond_0
    const-string v0, "OP_FEATURE_UST_MODE"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    .line 171
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportVideoEnhancer()Z
    .locals 1

    .line 1265
    const-string v0, "OP_FEATURE_VIDEO_ENHANCER"

    invoke-static {v0}, Lcom/oneplus/lib/util/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportBackFingerprint(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 439
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isSurportFaceUnlock(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 435
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x25

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isSurportGesture20(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.blackScreenGesture_2.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportNavigationBarOnly(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 443
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 415
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.no_need_power_on_password.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportProductInfo(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 427
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo17801(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSurportProductInfo16859(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.product_info_cheeseburger.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportProductInfo17801(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.product_info_dumpling.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportSimNfc(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.sim_nfc.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isThemeOn(Landroid/content/ContentResolver;)Z
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 752
    const-string v0, "oem_special_theme"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method public static isWhiteModeOn(Landroid/content/ContentResolver;)Z
    .locals 2
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .line 736
    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static isZh(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 721
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 722
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "language":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 724
    const/4 v2, 0x1

    return v2

    .line 726
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static isZhCn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 717
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 2
    .param p0, "color"    # Ljava/lang/String;

    .line 1313
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1316
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .line 879
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 880
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 1189
    const-string v0, "0"

    .line 1190
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1192
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    .line 1193
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 1197
    nop

    .line 1199
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1202
    :goto_0
    goto :goto_1

    .line 1200
    :catch_0
    move-exception v2

    .line 1201
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 1197
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1194
    :catch_1
    move-exception v2

    .line 1195
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1197
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 1199
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1205
    :cond_0
    :goto_1
    return-object v0

    .line 1197
    :goto_2
    if-eqz v1, :cond_1

    .line 1199
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1202
    goto :goto_3

    .line 1200
    :catch_2
    move-exception v3

    .line 1201
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 1202
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v2
.end method

.method public static removeMultiApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1075
    const-string v0, "OPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiApp ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1080
    .local v0, "mPackageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1081
    .local v1, "ui":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_0

    .line 1083
    const-string v2, "OPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeMultiApp-uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_0

    .line 1085
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    .end local v1    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static removeMultiApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1094
    const-string v0, "OPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeMultiApp ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1099
    .local v0, "mPackageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v1

    .line 1101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static replaceFileSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 179
    move-object v0, p0

    .line 180
    .local v0, "sizeString":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 181
    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    aget-object v2, v2, v1

    sget-object v3, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static replaceZhCnToZhCnHANS(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 915
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$5;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 930
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 931
    return-void
.end method

.method public static resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1162
    const-string v0, "ro.display.series"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, "defaultName":Ljava/lang/String;
    nop

    .line 1164
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_modified_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "modified":Ljava/lang/String;
    nop

    .line 1167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    .line 1166
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1168
    .local v2, "opDeviceName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1169
    nop

    .line 1170
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_oneplus_devicename"

    .line 1169
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1172
    move-object v2, v0

    .line 1174
    :cond_0
    return-object v2
.end method

.method public static restoreBackupEntranceInLauncher(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 465
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 354
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 360
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 362
    :cond_1
    const-string v1, "OPSettings"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Long;

    .line 366
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 372
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 374
    :cond_1
    const-string v1, "OPSettings"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 342
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 344
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 345
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 350
    :cond_1
    const-string v1, "OPSettings"

    invoke-static {v1, p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .line 330
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 333
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 336
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-virtual {v1, p0, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 338
    :cond_1
    const-string v1, "OPSettings"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public static sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 952
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/oneplus/settings/SettingsBaseApplication;

    .line 953
    .local v0, "app":Lcom/oneplus/settings/SettingsBaseApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/settings/SettingsBaseApplication;->isBetaRom()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    const/4 v1, 0x0

    .line 955
    .local v1, "label":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 956
    .local v2, "v":J
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v2, v4

    goto :goto_0

    .line 959
    :cond_0
    move-object v1, p2

    .line 962
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/settings/SettingsBaseApplication;->getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p0, p1, v1, v5}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V

    .line 964
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "v":J
    :cond_1
    return-void
.end method

.method public static setAppUpdated(Z)V
    .locals 3
    .param p0, "isUpdated"    # Z

    .line 236
    sput-boolean p0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    .line 237
    const-string v0, "OPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method public static setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "dividerDrawableStart"    # I
    .param p3, "dividerDrawableEnd"    # I
    .param p4, "dividerHight"    # I

    .line 901
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 902
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 903
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLTRLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 908
    :goto_0
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 909
    .local v2, "hight":I
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 910
    return-void
.end method

.method public static setPreferenceDivider(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;III)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pf"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p2, "dividerDrawableStart"    # I
    .param p3, "dividerDrawableEnd"    # I
    .param p4, "dividerHight"    # I

    .line 889
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 890
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 891
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLTRLayout(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/SettingsPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 896
    :goto_0
    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 897
    .local v2, "hight":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPUtils;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/settings/SettingsPreferenceFragment;->setDividerHeight(I)V

    .line 898
    return-void
.end method

.method public static showROMStorage()Ljava/lang/String;
    .locals 10

    .line 622
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "statFs":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 625
    .local v2, "blockSize":J
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    .line 626
    .local v4, "totalBlocks":J
    const-wide/16 v6, 0x400

    div-long v6, v2, v6

    mul-long/2addr v6, v4

    .line 627
    .local v6, "size":J
    const-wide/32 v8, 0x10000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 628
    const-string v8, "512GB"

    return-object v8

    .line 629
    :cond_0
    const-wide/32 v8, 0x8000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 630
    const-string v8, "256GB"

    return-object v8

    .line 631
    :cond_1
    const-wide/32 v8, 0x4000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 632
    const-string v8, "128GB"

    return-object v8

    .line 633
    :cond_2
    const-wide/32 v8, 0x2000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_3

    .line 634
    const-string v8, "64GB"

    return-object v8

    .line 635
    :cond_3
    const-wide/32 v8, 0x1000000

    cmp-long v8, v6, v8

    if-ltz v8, :cond_4

    .line 636
    const-string v8, "32GB"

    return-object v8

    .line 638
    :cond_4
    const-string v8, "16GB"

    return-object v8
.end method

.method public static stopTethering(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1156
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1157
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 1158
    return-void
.end method

.method public static tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 842
    if-nez p0, :cond_0

    .line 843
    return-object p0

    .line 846
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 847
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 848
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 850
    .local v1, "bitmapResult":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 851
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 852
    return-object v1
.end method
