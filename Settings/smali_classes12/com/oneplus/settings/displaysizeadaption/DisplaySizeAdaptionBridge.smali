.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "DisplaySizeAdaptionBridge.java"


# static fields
.field private static final BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.android.browser"

.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.calendar"

.field private static final CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field private static final DOWNLOADS_PACKAGE_NAME:Ljava/lang/String; = "com.android.documentsui"

.field private static final DRIVE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.docs"

.field private static final DUO_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.tachyon"

.field public static final FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final GMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field private static final GOOGLEQUICKSEARCHBOX_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final GOOGLE_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.walletnfcrel"

.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.music"

.field private static final PHOTOS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final PLAY_STORE_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field private static final VIDEOS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.videos"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

.field private static resolveInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/CharSequence;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_DEFAULT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$4;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge$4;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ORIGINAL_SIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->isLauncherApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->packageExcludeFilter(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->getLauncherApp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getLauncherApp()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static isLauncherApp(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->resolveInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private static packageExcludeFilter(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "com.google.android.calendar"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.chrome"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.documentsui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.tachyon"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.walletnfcrel"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.videos"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.music"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.vending"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.browser"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    return v0
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadAppMap()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 7

    :try_start_0
    new-instance v6, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iput-object v6, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
