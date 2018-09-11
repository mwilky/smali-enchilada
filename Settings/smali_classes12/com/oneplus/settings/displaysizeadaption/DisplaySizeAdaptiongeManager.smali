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

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAm:Landroid/app/ActivityManager;

    .line 77
    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 141
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 142
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
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
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mDisplaySizeAdaptiongeManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    return-object v0
.end method

.method private loadClassAppList(I)V
    .locals 19
    .param p1, "value"    # I

    move-object/from16 v1, p0

    .line 146
    move/from16 v2, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 148
    .local v3, "classAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/16 v6, 0x46

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-virtual {v0, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 149
    .local v0, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .line 152
    .local v8, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    .line 153
    .local v9, "appUid":I
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

    .line 154
    .local v11, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v12

    if-ne v12, v6, :cond_0

    invoke-virtual {v11}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-ne v12, v2, :cond_0

    .line 155
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .end local v11    # "op":Landroid/app/AppOpsManager$OpEntry;
    :cond_0
    goto :goto_1

    .line 158
    .end local v8    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v9    # "appUid":I
    :cond_1
    goto :goto_0

    .line 160
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v5, "mainIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v6

    if-nez v6, :cond_3

    .line 162
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_3
    const/4 v6, 0x0

    .line 165
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    move-object v6, v7

    .line 186
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 187
    return-void

    .line 189
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

    .line 190
    .local v8, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 191
    .local v9, "activityName":Ljava/lang/String;
    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 192
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 194
    .local v13, "appLabel":Ljava/lang/String;
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v17, v11

    .line 195
    .local v17, "isSelected":Z
    if-eqz v17, :cond_5

    .line 196
    new-instance v18, Lcom/oneplus/settings/better/OPAppModel;

    const-string v14, ""

    const/4 v15, 0x0

    move-object/from16 v11, v18

    move-object v12, v10

    move/from16 v16, v17

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object/from16 v11, v18

    .line 199
    .local v11, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz v2, :cond_b

    const/16 v12, 0x64

    if-ne v2, v12, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v12

    if-nez v12, :cond_6

    goto :goto_4

    .line 203
    :cond_6
    if-eq v2, v4, :cond_a

    const/16 v12, 0x65

    if-ne v2, v12, :cond_7

    goto :goto_3

    .line 207
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x2

    if-eq v2, v12, :cond_8

    const/16 v12, 0x66

    if-ne v2, v12, :cond_9

    .line 208
    :cond_8
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 212
    :cond_9
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v13    # "appLabel":Ljava/lang/String;
    .end local v17    # "isSelected":Z
    goto :goto_5

    .line 204
    .restart local v8    # "reInfo":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "activityName":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    .restart local v11    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .restart local v13    # "appLabel":Ljava/lang/String;
    .restart local v17    # "isSelected":Z
    :cond_a
    :goto_3
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 200
    :cond_b
    :goto_4
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v12, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v8    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v13    # "appLabel":Ljava/lang/String;
    .end local v17    # "isSelected":Z
    :goto_5
    goto/16 :goto_2

    .line 224
    .end local v0    # "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    .end local v5    # "mainIntent":Landroid/content/Intent;
    .end local v6    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_c
    goto :goto_6

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private loadFullScreenApp()V
    .locals 2

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 233
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 234
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 235
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 237
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 238
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    .line 242
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmp17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 245
    return-void
.end method

.method private loadOriginalSizeApp()V
    .locals 2

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 251
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadClassAppList(I)V

    .line 253
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 254
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    .line 255
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mTmpOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    return-void
.end method

.method private removeTask(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    move-object v1, v0

    .line 321
    .local v1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 325
    goto :goto_0

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v1, :cond_0

    .line 327
    return-void

    .line 330
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

    .line 331
    .local v3, "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 332
    :cond_1
    move-object v4, v0

    .line 333
    .local v4, "baseActivity":Landroid/content/ComponentName;
    :goto_2
    if-eqz v4, :cond_2

    .line 334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 336
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    goto :goto_3

    .line 337
    :catch_1
    move-exception v5

    .line 338
    .local v5, "e":Landroid/os/RemoteException;
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

    .line 342
    .end local v3    # "recentTaskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v4    # "baseActivity":Landroid/content/ComponentName;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    goto :goto_1

    .line 343
    :cond_3
    return-void
.end method


# virtual methods
.method public getAppTypeValue(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 299
    const/4 v0, 0x1

    .line 300
    .local v0, "mAppTypeValue":I
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 301
    .local v1, "mOriginalOPAppModel":Lcom/oneplus/settings/better/OPAppModel;
    sget-object v2, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 302
    .local v2, "mFullScreenOPAppModel":Lcom/oneplus/settings/better/OPAppModel;
    sget-object v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    .line 303
    .local v3, "m17819FullScreenAppModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eqz v1, :cond_0

    .line 304
    const/4 v0, 0x0

    goto :goto_0

    .line 305
    :cond_0
    if-eqz v2, :cond_1

    .line 306
    const/4 v0, 0x1

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 308
    if-eqz v3, :cond_2

    .line 309
    const/4 v0, 0x3

    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x1

    .line 314
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

    .line 87
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadFullScreenApp()V

    .line 88
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->loadOriginalSizeApp()V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;>;"
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    .local v1, "mainIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_0
    const/4 v2, 0x0

    .line 96
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 117
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    return-object v3

    .line 120
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

    .line 121
    .local v4, "reInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 122
    .local v5, "activityName":Ljava/lang/String;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 123
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 127
    .local v9, "appLabel":Ljava/lang/String;
    new-instance v13, Lcom/oneplus/settings/better/OPAppModel;

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v13

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    move-object v7, v13

    .line 130
    .local v7, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v4    # "reInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "activityName":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v9    # "appLabel":Ljava/lang/String;
    goto :goto_0

    .line 135
    .end local v1    # "mainIntent":Landroid/content/Intent;
    .end local v2    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    goto :goto_1

    .line 133
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public setClassApp(ILjava/lang/String;I)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 265
    invoke-direct {p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->removeTask(Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x3e7

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoByUserId(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 268
    :catch_0
    move-exception v2

    .line 270
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->multiAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3, p2, p3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 274
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

    .line 275
    .local v4, "pkgLabel":Ljava/lang/String;
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    const-string v5, ""

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p2

    move v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 276
    .local v1, "appModel":Lcom/oneplus/settings/better/OPAppModel;
    if-eq p3, v0, :cond_6

    const/16 v0, 0x65

    if-ne p3, v0, :cond_1

    goto :goto_2

    .line 280
    :cond_1
    if-eqz p3, :cond_5

    const/16 v0, 0x64

    if-ne p3, v0, :cond_2

    goto :goto_1

    .line 284
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x66

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 285
    :cond_3
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 289
    :cond_4
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v4    # "pkgLabel":Ljava/lang/String;
    goto :goto_3

    .line 281
    .restart local v1    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .restart local v4    # "pkgLabel":Ljava/lang/String;
    :cond_5
    :goto_1
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 277
    :cond_6
    :goto_2
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mFullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->mOriginalSizeAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->m17819FullScreenAppMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    .end local v1    # "appModel":Lcom/oneplus/settings/better/OPAppModel;
    .end local v4    # "pkgLabel":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 293
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "DisplaySizeAdaptiongeManager"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_4
    return-void
.end method
