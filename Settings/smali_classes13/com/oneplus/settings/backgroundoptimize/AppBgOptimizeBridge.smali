.class public Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppBgOptimizeBridge.java"


# static fields
.field public static final FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModesMap(I)Ljava/util/Map;

    move-result-object v2

    nop

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
    .locals 3

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, p2, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
