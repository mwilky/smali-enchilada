.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
.super Ljava/lang/Object;
.source "DisplaySizeAdaptiongeManager.java"


# static fields
.field public static final APP_TYPE_COMPAT_MODE:I = 0x0

.field public static final APP_TYPE_DEFAULT_MODE:I = 0x1

.field public static final APP_TYPE_FULL_SCREEN_MODE:I = 0x3

.field private static final FULLSCREENAPP_TYPE:I = 0x46

.field private static final MODE_COMPAT_VALUE:I = 0x64

.field private static final MODE_FULL_VALUE:I = 0x66

.field private static final MODE_NONFULL_VALUE:I = 0x65

.field private static m17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

.field private static mFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmp17819FullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpFullScreenAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mTmpOriginalSizeAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field multiAppInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    :cond_0
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object v0
.end method

.method private loadClassAppList(I)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/16 v6, 0x46

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    if-ne v12, v6, :cond_0

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-ne v12, v2, :cond_0

    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const/4 v6, 0x0

    iget-object v8, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    move-object v6, v7

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    return-void

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v17, v11

    if-eqz v17, :cond_5

    new-instance v18, Lcom/oneplus/settings/better/OPAppModel;

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v11, v18

    move-object v12, v10

    move/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v11, v18

    if-eqz v2, :cond_b

    const/16 v12, 0x64

    if-ne v2, v12, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_4

    :cond_6
    if-eq v2, v4, :cond_a

    const/16 v12, 0x65

    if-ne v2, v12, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x2

    if-eq v2, v12, :cond_8

    const/16 v12, 0x66

    if-ne v2, v12, :cond_9

    :cond_8
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    :goto_3
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    :goto_4
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    goto/16 :goto_2

    :cond_c
    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private loadFullScreenApp()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private loadOriginalSizeApp()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private removeTask(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_1
    move-object v4, v0

    :goto_2
    if-eqz v4, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v6, "OPNotchDisplayGuideActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getAppTypeValue(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method public loadAppMap()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadFullScreenApp()V

    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadOriginalSizeApp()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    new-instance v13, Lcom/oneplus/settings/better/OPAppModel;

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v13

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object v7, v13

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public setClassApp(ILjava/lang/String;I)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->removeTask(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x3e7

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    if-eq p3, v0, :cond_6

    const/16 v0, 0x65

    if-ne p3, v0, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p3, :cond_5

    const/16 v0, 0x64

    if-ne p3, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x66

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    :cond_3
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_1
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    goto :goto_4

    :catch_1
    move-exception v0

    const-string v1, "DisplaySizeAdaptiongeManager"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method
