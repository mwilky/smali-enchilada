.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_OPS:[I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RECENT_TIME_INTERVAL_MILLIS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 65
    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .locals 28
    .param p1, "now"    # J
    .param p3, "ops"    # Landroid/app/AppOpsManager$PackageOps;

    move-object/from16 v1, p0

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v14

    .line 145
    .local v14, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .line 146
    .local v0, "highBattery":Z
    const/4 v2, 0x0

    .line 147
    .local v2, "normalBattery":Z
    const-wide/16 v3, 0x0

    .line 149
    .local v3, "locationRequestFinishTime":J
    const-wide/32 v5, 0x5265c00

    sub-long v15, p1, v5

    .line 150
    .local v15, "recentLocationCutoffTime":J
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v17, v0

    move/from16 v20, v2

    move-wide/from16 v18, v3

    .end local v0    # "highBattery":Z
    .end local v2    # "normalBattery":Z
    .end local v3    # "locationRequestFinishTime":J
    .local v17, "highBattery":Z
    .local v18, "locationRequestFinishTime":J
    .local v20, "normalBattery":Z
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 151
    .local v0, "entry":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v15

    if-ltz v2, :cond_1

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getDuration()I

    move-result v4

    int-to-long v6, v4

    add-long v18, v2, v6

    .line 153
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .end local v0    # "entry":Landroid/app/AppOpsManager$OpEntry;
    goto :goto_1

    .line 158
    .restart local v0    # "entry":Landroid/app/AppOpsManager$OpEntry;
    :pswitch_0
    const/16 v17, 0x1

    .line 159
    goto :goto_1

    .line 155
    :pswitch_1
    const/4 v2, 0x1

    .line 156
    .end local v20    # "normalBattery":Z
    .restart local v2    # "normalBattery":Z
    nop

    .line 164
    move/from16 v20, v2

    .end local v0    # "entry":Landroid/app/AppOpsManager$OpEntry;
    .end local v2    # "normalBattery":Z
    .restart local v20    # "normalBattery":Z
    :cond_1
    :goto_1
    goto :goto_0

    .line 166
    :cond_2
    const/4 v0, 0x0

    if-nez v17, :cond_4

    if-nez v20, :cond_4

    .line 167
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hadn\'t used location within the time interval."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    return-object v0

    .line 174
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    .line 175
    .local v12, "uid":I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 177
    .local v10, "userId":I
    move-object/from16 v21, v0

    .line 179
    .local v21, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_start_0
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v13, v3, v10}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v2

    .line 181
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v11, :cond_5

    .line 182
    :try_start_1
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null application info retrieved for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    return-object v0

    .line 200
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    move v1, v10

    move/from16 v27, v12

    goto :goto_2

    .line 187
    .restart local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_5
    :try_start_2
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 188
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v2, v11, v10}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 189
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v9, v2

    .line 190
    .local v9, "appLabel":Ljava/lang/CharSequence;
    iget-object v2, v1, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v9, v0}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 191
    .local v2, "badgedAppLabel":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    const/4 v2, 0x0

    .line 198
    .end local v2    # "badgedAppLabel":Ljava/lang/CharSequence;
    .local v22, "badgedAppLabel":Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v22, v2

    new-instance v23, Lcom/android/settingslib/location/RecentLocationApps$Request;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v24, 0x0

    move-object/from16 v2, v23

    move-object v3, v13

    move v4, v12

    move-object v5, v0

    move-object v7, v9

    move/from16 v8, v17

    move-object/from16 v25, v9

    move-object/from16 v9, v22

    .end local v9    # "appLabel":Ljava/lang/CharSequence;
    .local v25, "appLabel":Ljava/lang/CharSequence;
    move v1, v10

    move-object/from16 v26, v11

    move-wide/from16 v10, v18

    .end local v10    # "userId":I
    .end local v11    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "userId":I
    .local v26, "appInfo":Landroid/content/pm/ApplicationInfo;
    move/from16 v27, v12

    move-object/from16 v12, v24

    .end local v12    # "uid":I
    .local v27, "uid":I
    :try_start_3
    invoke-direct/range {v2 .. v12}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;ILandroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v21, v23

    .line 202
    .end local v0    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "badgedAppLabel":Ljava/lang/CharSequence;
    .end local v25    # "appLabel":Ljava/lang/CharSequence;
    .end local v26    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3

    .line 200
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "userId":I
    .end local v27    # "uid":I
    .restart local v10    # "userId":I
    .restart local v12    # "uid":I
    :catch_2
    move-exception v0

    move v1, v10

    move/from16 v27, v12

    .line 201
    .end local v10    # "userId":I
    .end local v12    # "uid":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "userId":I
    .restart local v27    # "uid":I
    :goto_2
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package name not found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    return-object v21

    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 114
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v2

    if-lez v3, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    .line 115
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 118
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0

    .line 109
    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 75
    .local v1, "aoManager":Landroid/app/AppOpsManager;
    sget-object v2, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_OPS:[I

    invoke-virtual {v1, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "appOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 80
    .local v4, "appOpsCount":I
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .local v5, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 82
    .local v6, "now":J
    iget-object v8, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 83
    .local v8, "um":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    .line 85
    .local v9, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_4

    .line 86
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AppOpsManager$PackageOps;

    .line 89
    .local v11, "ops":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 90
    .local v12, "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v13

    .line 91
    .local v13, "uid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 92
    .local v14, "userId":I
    const/16 v15, 0x3e8

    if-ne v13, v15, :cond_1

    const-string v15, "android"

    .line 93
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 95
    .local v15, "isAndroidOs":Z
    :goto_2
    if-nez v15, :cond_3

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x3e7

    if-ne v14, v3, :cond_2

    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v3, v12}, Lcom/android/settingslib/location/RecentLocationApps;->isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    goto :goto_3

    .line 98
    :cond_2
    invoke-direct {v0, v6, v7, v11}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v3

    .line 99
    .local v3, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    if-eqz v3, :cond_3

    .line 100
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v3    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v11    # "ops":Landroid/app/AppOpsManager$PackageOps;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v14    # "userId":I
    .end local v15    # "isAndroidOs":Z
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 103
    .end local v10    # "i":I
    :cond_4
    return-object v5
.end method

.method public getAppListSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 125
    .local v0, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v1, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v1, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    return-object v0
.end method
