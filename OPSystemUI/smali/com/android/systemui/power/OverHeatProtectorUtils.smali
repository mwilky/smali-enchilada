.class public Lcom/android/systemui/power/OverHeatProtectorUtils;
.super Ljava/lang/Object;
.source "OverHeatProtectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static mActivityManager:Landroid/app/ActivityManager;

.field private static mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

.field private static mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private static mPackageManager:Landroid/content/pm/PackageManager;

.field private static mWallpaperManager:Landroid/app/WallpaperManager;

.field private static sContext:Landroid/content/Context;

.field private static sCurrentDockedPackageName:Ljava/lang/String;

.field private static sCurrentInputMethodPackageName:Ljava/lang/String;

.field private static sCurrentLauncherPackageName:Ljava/lang/String;

.field private static sCurrentWallpaperPackageName:Ljava/lang/String;

.field private static sInit:Z

.field private static sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private static sOverHeatWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sInit:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentDockedPackageName:Ljava/lang/String;

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qetest"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qetest.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oppo.qemonitor.remote"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string/jumbo v1, "system:ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android.process.acore"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "android.process.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "org.codeaurora.ims"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.telephony"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qcrilmsgtunnel"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.telephonyservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.GBAHttpAuthentication.auth"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qti.qualcomm.datastatusnotification"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.location.XT"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.qti.tetherservice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.qualcomm.wfd.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.nxp.spi"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.ota"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "net.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "net.oneplus.odm.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.coloros.mcs"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oem.oemlogkit"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.oneplus.faceunlock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.process.gapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.persistent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.unstable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.apps.messaging"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.gms.ui"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.inputmethod.latin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    const-string v1, "com.google.android.webview"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->canThisProcessBeKilledByOverHeat(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lorg/json/JSONArray;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static canThisProcessBeKilledByOverHeat(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/systemui/power/OverHeatProtectorUtils;->isInOverHeatWhiteList(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getCurrentLauncher()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->getWallpaperPackageNameIfAvailable()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentWallpaperPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wallpaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentInputMethodPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sCurrentLauncherPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private static forceStopPackage(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task is killed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method private static getCurrentInputMethod()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getCurrentLauncher()Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v2
.end method

.method private static getWallpaperPackageNameIfAvailable()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t get wallpaper info package name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string v1, "FATAL: repeated initialization for Utils!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/android/systemui/power/BackgroundExecutor;->get()Lcom/android/systemui/power/BackgroundExecutor;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

    sput-object p0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->registerOnlineConfigObserver()V

    return-void
.end method

.method public static isInOverHeatWhiteList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method public static killAllRunningProcesses()V
    .locals 3

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->mBackgroundExecutor:Lcom/android/systemui/power/BackgroundExecutor;

    new-instance v2, Lcom/android/systemui/power/OverHeatProtectorUtils$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/OverHeatProtectorUtils$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/BackgroundExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static registerOnlineConfigObserver()V
    .locals 5

    sget-object v0, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/power/OverHeatProtectorUtils$OnlineConfigUpdater;-><init>(Lcom/android/systemui/power/OverHeatProtectorUtils$1;)V

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    sget-object v2, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "OverHeatConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    sput-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    :try_start_0
    sget-object v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    sget-boolean v1, Lcom/android/systemui/power/OverHeatProtectorUtils;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OverHeatProtector"

    const-string v2, "Register online config observer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register online config fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/OverHeatProtectorUtils$2;

    invoke-direct {v1}, Lcom/android/systemui/power/OverHeatProtectorUtils$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static resolveConfig(Lorg/json/JSONArray;)V
    .locals 9

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setEnable(Z)V

    :cond_0
    const-string v4, "orange_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setOrangeTemp(I)V

    :cond_1
    const-string v4, "red_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setRedTemp(I)V

    :cond_2
    const-string v4, "purple_temp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setPurpleTemp(I)V

    :cond_3
    const-string v4, "orange_interval"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setOrangeInterval(I)V

    :cond_4
    const-string v4, "red_interval"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/power/OverHeatProtector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/power/OverHeatProtector;->setRedInterval(I)V

    :cond_5
    const-string/jumbo v4, "whitelist"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v6, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    move v6, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    sget-object v7, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    const-string v6, "OverHeatProtector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updated complete sOverHeatWhiteList size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/systemui/power/OverHeatProtectorUtils;->sOverHeatWhiteList:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConfig error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveConfig error. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    goto :goto_4

    :cond_9
    const-string v0, "OverHeatProtector"

    const-string v1, "jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
