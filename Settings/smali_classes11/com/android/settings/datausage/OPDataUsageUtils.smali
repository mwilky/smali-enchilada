.class public Lcom/android/settings/datausage/OPDataUsageUtils;
.super Ljava/lang/Object;
.source "OPDataUsageUtils.java"


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = 0x2

.field public static final ERROR_CODE_INVILIDSIMCARD:I = 0x1

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final KEY_ACCOUNT_DAY_SIM:Ljava/lang/String; = "key_account_day_slot_"

.field private static final KEY_DATAUSAGE_ALERT_NUMBER_SIM:Ljava/lang/String; = "key_datausage_alert_number_sim_"

.field private static final KEY_DATAUSAGE_WARN_STATE:Ljava/lang/String; = "key_ten_percent_low_remaining_state_sim_"

.field public static final METHOD_QUERY_ONEPLUS_DATAUSAGE:Ljava/lang/String; = "method_query_oneplus_datausage"

.field public static final METHOD_QUERY_ONEPLUS_DATAUSAGE_REGION:Ljava/lang/String; = "method_query_oneplus_datausage_region"

.field public static final ONEPLUS_DATAUSAGE_ACCOUNTDAY:Ljava/lang/String; = "oneplus_datausage_accountday"

.field public static final ONEPLUS_DATAUSAGE_ERROR_CODE:Ljava/lang/String; = "oneplus_datausage_error_code"

.field public static final ONEPLUS_DATAUSAGE_SLOTID:Ljava/lang/String; = "oneplus_datausage_slotid"

.field public static final ONEPLUS_DATAUSAGE_TIME_END:Ljava/lang/String; = "oneplus_datausage_time_end"

.field public static final ONEPLUS_DATAUSAGE_TIME_START:Ljava/lang/String; = "oneplus_datausage_time_start"

.field public static final ONEPLUS_DATAUSAGE_TOTAL:Ljava/lang/String; = "oneplus_datausage_total"

.field public static final ONEPLUS_DATAUSAGE_USED:Ljava/lang/String; = "oneplus_datausage_used"

.field public static final ONEPLUS_DATAUSAGE_WARN_STATE:Ljava/lang/String; = "oneplus_datausage_warn_state"

.field public static final ONEPLUS_DATAUSAGE_WARN_VALUE:Ljava/lang/String; = "oneplus_datausage_warn_value"

.field public static final ONEPLUS_SECURITY_URI:Ljava/lang/String; = "content://com.oneplus.security.database.SafeProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAccountDay(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_account_day_slot_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 43
    .local v0, "day":I
    return v0
.end method

.method public static getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 91
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "packageNames":[Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 94
    .local v4, "length":I
    :goto_0
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 95
    .local v5, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 96
    .local v6, "ipm":Landroid/content/pm/IPackageManager;
    move v7, v3

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 97
    aget-object v8, v2, v7

    .line 98
    .local v8, "packageName":Ljava/lang/String;
    invoke-interface {v6, v8, v3, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 99
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v9, :cond_1

    .line 100
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    .end local v5    # "userId":I
    .end local v6    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v7    # "i":I
    :cond_2
    goto :goto_2

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 75
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPSNSUtils;->findSlotIdBySubId(I)I

    move-result v0

    .line 77
    .local v0, "slotId":I
    invoke-static {p0, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getOneplusDataUsageRegion(Landroid/content/Context;I)[J

    move-result-object v1

    return-object v1

    .line 79
    .end local v0    # "slotId":I
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/OPDataUsageUtils;->getOneplusDataUsageRegion(Landroid/content/Context;I)[J

    move-result-object v0

    return-object v0
.end method

.method public static final getDataWarnBytes(Landroid/content/Context;I)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_datausage_alert_number_sim_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 54
    .local v0, "data":J
    return-wide v0
.end method

.method public static final getDataWarnState(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key_ten_percent_low_remaining_state_sim_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 65
    .local v0, "state":I
    return v0
.end method

.method public static getOneplusDataUsage(Landroid/content/Context;I)Ljava/util/Map;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 163
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v0, "oneplus_datausage_slotid"

    move/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "method_query_oneplus_datausage"

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 166
    .local v0, "bundle2":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 167
    const-string v4, "oneplus_datausage_error_code"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 168
    .local v4, "errorCode":I
    const-string v5, "oneplus_datausage_accountday"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 169
    .local v5, "accountDay":I
    const-string v6, "oneplus_datausage_time_start"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 170
    .local v6, "startTime":J
    const-string v8, "oneplus_datausage_time_end"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 171
    .local v8, "endTime":J
    const-string v10, "oneplus_datausage_total"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 172
    .local v10, "total":J
    const-string v12, "oneplus_datausage_used"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 173
    .local v12, "used":J
    const-string v14, "oneplus_datausage_warn_state"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 174
    .local v14, "warnState":Z
    const-string v15, "oneplus_datausage_warn_value"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v17, v15

    .line 175
    .local v17, "warnValue":J
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v15

    .line 176
    .local v15, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "oneplus_datausage_error_code"

    move-object/from16 v19, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "bundle2":Landroid/os/Bundle;
    .local v19, "bundle2":Landroid/os/Bundle;
    invoke-interface {v15, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "oneplus_datausage_accountday"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "oneplus_datausage_total"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "oneplus_datausage_used"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "oneplus_datausage_time_start"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "oneplus_datausage_time_end"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "oneplus_datausage_warn_state"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "oneplus_datausage_warn_value"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v20, v1

    move-wide/from16 v1, v17

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v17    # "warnValue":J
    .local v1, "warnValue":J
    .local v20, "bundle":Landroid/os/Bundle;
    invoke-interface {v15, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    return-object v15

    .line 186
    .end local v1    # "warnValue":J
    .end local v4    # "errorCode":I
    .end local v5    # "accountDay":I
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    .end local v10    # "total":J
    .end local v12    # "used":J
    .end local v14    # "warnState":Z
    .end local v15    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19    # "bundle2":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 189
    .end local v20    # "bundle":Landroid/os/Bundle;
    .local v1, "bundle":Landroid/os/Bundle;
    :cond_0
    move-object/from16 v20, v1

    .end local v1    # "bundle":Landroid/os/Bundle;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 186
    .end local v20    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object/from16 v20, v1

    .line 187
    .end local v1    # "bundle":Landroid/os/Bundle;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "bundle":Landroid/os/Bundle;
    :goto_0
    const-string v1, "OPDataUsageUtils"

    const-string v2, "getOneplusDataUsage error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getOneplusDataUsageRegion(Landroid/content/Context;I)[J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 197
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "oneplus_datausage_slotid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "method_query_oneplus_datausage_region"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 201
    .local v4, "bundle2":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 202
    const-string v5, "oneplus_datausage_error_code"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 203
    .local v5, "errorCode":I
    if-eq v5, v3, :cond_0

    .line 204
    const-string v6, "oneplus_datausage_time_start"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 205
    .local v6, "startTime":J
    const-string v8, "oneplus_datausage_time_end"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 206
    .local v8, "endTime":J
    new-array v10, v3, [J

    aput-wide v6, v10, v2

    aput-wide v8, v10, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    .line 212
    .end local v4    # "bundle2":Landroid/os/Bundle;
    .end local v5    # "errorCode":I
    .end local v6    # "startTime":J
    .end local v8    # "endTime":J
    :cond_0
    goto :goto_0

    .line 209
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "OPDataUsageUtils"

    const-string v6, "getOneplusDataUsage error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-array v3, v3, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v3, v1

    return-object v3
.end method
