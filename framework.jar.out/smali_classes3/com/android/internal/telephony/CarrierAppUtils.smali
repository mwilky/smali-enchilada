.class public final Lcom/android/internal/telephony/CarrierAppUtils;
.super Ljava/lang/Object;
.source "CarrierAppUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CarrierAppUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;
    .param p3, "userId"    # I

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 107
    .local v1, "config":Lcom/android/server/SystemConfig;
    nop

    .line 108
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v7

    .line 111
    .local v7, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 112
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v8

    .line 113
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit v0

    return-void

    .line 105
    .end local v1    # "config":Lcom/android/server/SystemConfig;
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local p2    # "contentResolver":Landroid/content/ContentResolver;
    .end local p3    # "userId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;I)V
    .locals 9
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I

    const-class v0, Lcom/android/internal/telephony/CarrierAppUtils;

    monitor-enter v0

    .line 80
    :try_start_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 81
    .local v1, "config":Lcom/android/server/SystemConfig;
    nop

    .line 82
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v7

    .line 83
    .local v7, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    nop

    .line 84
    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v8

    .line 85
    .local v8, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit v0

    return-void

    .line 79
    .end local v1    # "config":Lcom/android/server/SystemConfig;
    .end local v7    # "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local p0    # "callingPackage":Ljava/lang/String;
    .end local p1    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local p2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local p3    # "contentResolver":Landroid/content/ContentResolver;
    .end local p4    # "userId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;Landroid/content/ContentResolver;ILandroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .locals 25
    .param p0, "callingPackage"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .local p5, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p6, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    .line 125
    move-object/from16 v11, p5

    invoke-static {v7, v10, v11}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v12

    .line 127
    .local v12, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_10

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    .line 131
    :cond_0
    move-object/from16 v13, p6

    invoke-static {v7, v10, v13}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v14

    .line 136
    .local v14, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v0

    .line 138
    .local v15, "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "carrier_apps_handled"

    const/4 v6, 0x0

    invoke-static {v9, v0, v6, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    move/from16 v16, v0

    .line 142
    .local v16, "hasRunOnce":Z
    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    move-object v4, v1

    .line 143
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v3, v1

    .line 144
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 145
    invoke-virtual {v8, v3}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    move/from16 v17, v1

    .line 148
    .local v17, "hasPrivileges":Z
    if-eqz v17, :cond_9

    .line 151
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_5

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v1, :cond_4

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v1, v2, :cond_3

    goto :goto_3

    .line 167
    :cond_3
    move-object/from16 v22, v0

    move-object v0, v3

    move-object/from16 v23, v4

    move/from16 v18, v6

    goto :goto_4

    .line 156
    :cond_4
    :goto_3
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update state("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): ENABLED for user "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v5, 0x1

    const/16 v20, 0x1

    move-object v1, v7

    move-object v2, v3

    move-object/from16 v22, v0

    move-object v0, v3

    move v3, v5

    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v20

    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v23, v5

    move v5, v10

    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v23, "ai":Landroid/content/pm/ApplicationInfo;
    move/from16 v18, v6

    move-object/from16 v6, p0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_4

    .line 167
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v23    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5
    move-object/from16 v22, v0

    move-object v0, v3

    move-object/from16 v23, v4

    move/from16 v18, v6

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v23    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_4
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v6, v1

    .line 168
    .local v6, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v6, :cond_8

    .line 169
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    move-object v4, v1

    .line 170
    .local v4, "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-eqz v1, :cond_7

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    goto :goto_6

    .line 183
    .end local v4    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :cond_6
    move/from16 v20, v3

    move-object/from16 v19, v5

    move-object/from16 v24, v6

    goto :goto_7

    .line 174
    .restart local v4    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v3, 0x4

    :goto_6
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update associated state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): ENABLED for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v19, 0x1

    move-object v1, v7

    const/16 v20, 0x4

    move-object/from16 v21, v4

    move/from16 v4, v19

    .end local v4    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .local v21, "associatedApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v19, v5

    move v5, v10

    move-object/from16 v24, v6

    move-object/from16 v6, p0

    .end local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v24, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 183
    .end local v21    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    :goto_7
    nop

    .line 169
    move-object/from16 v5, v19

    move-object/from16 v6, v24

    goto :goto_5

    .line 187
    .end local v24    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_8
    move-object/from16 v24, v6

    .end local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v24    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v6, v23

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .end local v23    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v24    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_b

    .line 191
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_9
    move-object/from16 v22, v0

    move-object v0, v3

    move/from16 v18, v6

    move-object v6, v4

    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v1

    if-nez v1, :cond_a

    iget v1, v6, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v1, :cond_a

    .line 194
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v0

    move v5, v10

    move-object/from16 v19, v6

    move-object/from16 v6, p0

    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v19, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_8

    .line 207
    .end local v19    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_a
    move-object/from16 v19, v6

    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_8
    if-nez v16, :cond_c

    .line 208
    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v6, v1

    .line 209
    .local v6, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v6, :cond_c

    .line 210
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    move-object v4, v1

    .line 211
    .local v4, "associatedApp":Landroid/content/pm/ApplicationInfo;
    iget v1, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-nez v1, :cond_b

    .line 213
    const-string v1, "CarrierAppUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update associated state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): DISABLED_UNTIL_USED for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x4

    const/16 v20, 0x0

    move-object v1, v7

    move-object/from16 v21, v4

    move/from16 v4, v20

    .end local v4    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    .restart local v21    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v20, v5

    move v5, v10

    move-object/from16 v23, v6

    move-object/from16 v6, p0

    .end local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v23, "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .end local v21    # "associatedApp":Landroid/content/pm/ApplicationInfo;
    goto :goto_a

    .line 224
    .end local v23    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_b
    move-object/from16 v20, v5

    move-object/from16 v23, v6

    .line 210
    .end local v6    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_a
    move-object/from16 v5, v20

    move-object/from16 v6, v23

    goto :goto_9

    .line 228
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v17    # "hasPrivileges":Z
    .end local v19    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "associatedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_c
    :goto_b
    nop

    .line 142
    move/from16 v6, v18

    move-object/from16 v0, v22

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 231
    :cond_d
    if-nez v16, :cond_e

    .line 232
    const-string v0, "carrier_apps_handled"

    const/4 v1, 0x1

    invoke-static {v9, v0, v1, v10}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 236
    :cond_e
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 239
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 240
    .local v0, "packageNames":[Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 241
    invoke-interface {v7, v0, v10}, Landroid/content/pm/IPackageManager;->grantDefaultPermissionsToEnabledCarrierApps([Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0    # "packageNames":[Ljava/lang/String;
    :cond_f
    goto :goto_c

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void

    .line 128
    .end local v14    # "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    .end local v15    # "enabledCarrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "hasRunOnce":Z
    :cond_10
    :goto_d
    move-object/from16 v13, p6

    return-void
.end method

.method private static getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 359
    const v0, 0x8000

    :try_start_0
    invoke-interface {p0, p2, v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 361
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 362
    return-object v0

    .line 366
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarrierAppUtils"

    const-string v2, "Could not reach PackageManager"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;
    .locals 2
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 294
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v0

    .line 295
    .local v0, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultCarrierAppCandidatesHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArraySet;)Ljava/util/List;
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 303
    .local p2, "systemCarrierAppsDisabledUntilUsed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 304
    return-object v0

    .line 307
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 308
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 309
    return-object v0

    .line 312
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 313
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 314
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 315
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 316
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 317
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    .line 318
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method public static getDefaultCarrierApps(Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)Ljava/util/List;
    .locals 6
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Landroid/telephony/TelephonyManager;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-static {p0, p2}, Lcom/android/internal/telephony/CarrierAppUtils;->getDefaultCarrierAppCandidates(Landroid/content/pm/IPackageManager;I)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 266
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 267
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 268
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 269
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 270
    invoke-virtual {p1, v4}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 272
    .local v5, "hasPrivileges":Z
    :goto_1
    if-nez v5, :cond_2

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "hasPrivileges":Z
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    .end local v1    # "i":I
    :cond_3
    return-object v0

    .line 260
    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getDefaultCarrierAssociatedAppsHelper(Landroid/content/pm/IPackageManager;ILandroid/util/ArrayMap;)Ljava/util/Map;
    .locals 10
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation

    .line 328
    .local p2, "systemCarrierAssociatedAppsDisabledUntilUsed":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 329
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 330
    .local v1, "associatedApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 331
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    .local v4, "carrierAppPackage":Ljava/lang/String;
    nop

    .line 333
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 334
    .local v5, "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v6, v2

    .local v6, "j":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 335
    nop

    .line 337
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 336
    invoke-static {p0, p1, v7}, Lcom/android/internal/telephony/CarrierAppUtils;->getApplicationInfoIfSystemApp(Landroid/content/pm/IPackageManager;ILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 340
    .local v7, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 341
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 342
    .local v8, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v8, :cond_0

    .line 343
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 344
    invoke-interface {v1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v7    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 330
    .end local v4    # "carrierAppPackage":Ljava/lang/String;
    .end local v5    # "associatedAppPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method
