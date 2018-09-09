.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1071
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 1074
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, "action":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1076
    return-void

    .line 1079
    :cond_0
    const/4 v0, 0x0

    .line 1080
    .local v0, "queryRestart":Z
    const/4 v4, 0x0

    .line 1081
    .local v4, "queryRemove":Z
    const/4 v5, 0x0

    .line 1082
    .local v5, "packageChanged":Z
    const/4 v6, 0x1

    .line 1083
    .local v6, "cancelNotifications":Z
    const/4 v7, 0x0

    .line 1084
    .local v7, "hideNotifications":Z
    const/4 v8, 0x0

    .line 1085
    .local v8, "unhideNotifications":Z
    const/16 v20, 0x5

    .line 1087
    .local v20, "reason":I
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 1088
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 1089
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 1090
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1091
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 1092
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1093
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 1094
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1095
    :cond_1
    move/from16 v21, v5

    move v5, v0

    .end local v0    # "queryRestart":Z
    .local v5, "queryRestart":Z
    .local v21, "packageChanged":Z
    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1097
    .local v15, "changeUserId":I
    const/4 v10, 0x0

    .line 1098
    .local v10, "pkgList":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 1099
    .local v11, "uidList":[I
    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    const-string v0, "android.intent.extra.REPLACING"

    .line 1100
    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v13

    :goto_0
    move v12, v0

    .line 1101
    .local v12, "removingPackage":Z
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " removing="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_3
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1103
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1104
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    const-string v9, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 1149
    .end local v11    # "uidList":[I
    .local v4, "uidList":[I
    .local v34, "queryRemove":Z
    :goto_1
    move/from16 v34, v4

    move-object v4, v11

    const/4 v14, 0x0

    goto/16 :goto_6

    .line 1105
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v34    # "queryRemove":Z
    .local v4, "queryRemove":Z
    .restart local v10    # "pkgList":[Ljava/lang/String;
    .restart local v11    # "uidList":[I
    :cond_4
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1106
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1107
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1108
    const/4 v7, 0x1

    goto :goto_1

    .line 1109
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_5
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1110
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1111
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1112
    const/4 v8, 0x1

    goto :goto_1

    .line 1113
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_6
    if-eqz v5, :cond_7

    .line 1114
    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1115
    .end local v10    # "pkgList":[Ljava/lang/String;
    .restart local v0    # "pkgList":[Ljava/lang/String;
    new-array v9, v14, [I

    const-string v10, "android.intent.extra.UID"

    const/4 v13, -0x1

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x0

    aput v10, v9, v13

    move-object v11, v9

    goto :goto_1

    .line 1117
    .end local v0    # "pkgList":[Ljava/lang/String;
    .restart local v10    # "pkgList":[Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 1118
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_8

    .line 1119
    return-void

    .line 1121
    :cond_8
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    .line 1122
    .local v13, "pkgName":Ljava/lang/String;
    if-nez v13, :cond_9

    .line 1123
    return-void

    .line 1125
    :cond_9
    if-eqz v21, :cond_e

    .line 1128
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1130
    const/4 v14, -0x1

    if-eq v15, v14, :cond_a

    .line 1128
    move v14, v15

    goto :goto_2

    .line 1131
    :cond_a
    nop

    .line 1128
    const/4 v14, 0x0

    :goto_2
    invoke-interface {v0, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .local v0, "enabled":I
    const/4 v14, 0x1

    if-eq v0, v14, :cond_b

    if-nez v0, :cond_c

    .line 1134
    :cond_b
    const/4 v0, 0x0

    .line 1144
    .end local v6    # "cancelNotifications":Z
    .local v0, "cancelNotifications":Z
    move v6, v0

    .line 1146
    .end local v0    # "cancelNotifications":Z
    .end local v4    # "queryRemove":Z
    .restart local v6    # "cancelNotifications":Z
    .restart local v34    # "queryRemove":Z
    :cond_c
    :goto_3
    move/from16 v34, v4

    goto :goto_5

    .line 1142
    .end local v34    # "queryRemove":Z
    .restart local v4    # "queryRemove":Z
    :catch_0
    move-exception v0

    goto :goto_3

    .line 1136
    :catch_1
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v14, :cond_d

    .line 1140
    const-string v14, "NotificationService"

    move/from16 v34, v4

    const-string v4, "Exception trying to look up app enabled setting"

    .end local v4    # "queryRemove":Z
    .restart local v34    # "queryRemove":Z
    invoke-static {v14, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_4

    .line 1144
    .end local v34    # "queryRemove":Z
    .restart local v4    # "queryRemove":Z
    :cond_d
    move/from16 v34, v4

    .end local v4    # "queryRemove":Z
    .restart local v34    # "queryRemove":Z
    :goto_4
    goto :goto_5

    .line 1146
    .end local v34    # "queryRemove":Z
    .restart local v4    # "queryRemove":Z
    :cond_e
    move/from16 v34, v4

    .end local v4    # "queryRemove":Z
    .restart local v34    # "queryRemove":Z
    :goto_5
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 1147
    .end local v10    # "pkgList":[Ljava/lang/String;
    .local v0, "pkgList":[Ljava/lang/String;
    new-array v10, v4, [I

    const-string v4, "android.intent.extra.UID"

    move/from16 v35, v6

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .end local v6    # "cancelNotifications":Z
    .local v35, "cancelNotifications":Z
    aput v4, v10, v14

    move-object v11, v10

    .line 1149
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v13    # "pkgName":Ljava/lang/String;
    move-object v4, v11

    move/from16 v6, v35

    .end local v11    # "uidList":[I
    .end local v35    # "cancelNotifications":Z
    .local v4, "uidList":[I
    .restart local v6    # "cancelNotifications":Z
    :goto_6
    if-eqz v0, :cond_15

    array-length v9, v0

    if-lez v9, :cond_15

    .line 1150
    array-length v13, v0

    move v11, v14

    :goto_7
    if-ge v11, v13, :cond_15

    aget-object v33, v0, v11

    .line 1151
    .local v33, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_12

    .line 1158
    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1159
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1300()I

    move-result v23

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1400()I

    move-result v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-nez v5, :cond_f

    const/16 v29, 0x1

    goto :goto_8

    :cond_f
    move/from16 v29, v14

    :goto_8
    const/16 v31, 0x14

    const/16 v32, 0x0

    move-object/from16 v22, v9

    move-object/from16 v25, v33

    move/from16 v30, v15

    invoke-virtual/range {v22 .. v32}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1150
    move/from16 v24, v11

    move/from16 v36, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v37, v15

    const/16 v27, 0x1

    goto :goto_a

    .line 1162
    :cond_10
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1300()I

    move-result v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1400()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    if-nez v5, :cond_11

    const/16 v22, 0x1

    goto :goto_9

    :cond_11
    move/from16 v22, v14

    :goto_9
    const/16 v23, 0x0

    move/from16 v24, v11

    move/from16 v11, v16

    move/from16 v36, v12

    move-object/from16 v12, v33

    .end local v12    # "removingPackage":Z
    .local v36, "removingPackage":Z
    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v13, v17

    const/16 v27, 0x1

    move/from16 v14, v18

    move/from16 v37, v15

    move/from16 v15, v19

    .end local v15    # "changeUserId":I
    .local v37, "changeUserId":I
    move/from16 v16, v22

    move/from16 v17, v37

    move/from16 v18, v20

    move-object/from16 v19, v23

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_a

    .line 1166
    .end local v36    # "removingPackage":Z
    .end local v37    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_12
    move/from16 v24, v11

    move/from16 v36, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v37, v15

    const/16 v27, 0x1

    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v36    # "removingPackage":Z
    .restart local v37    # "changeUserId":I
    if-eqz v7, :cond_13

    .line 1167
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_a

    .line 1168
    :cond_13
    if-eqz v8, :cond_14

    .line 1169
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    .line 1150
    .end local v33    # "pkgName":Ljava/lang/String;
    :cond_14
    :goto_a
    add-int/lit8 v11, v24, 0x1

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v12, v36

    move/from16 v15, v37

    goto/16 :goto_7

    .line 1175
    .end local v36    # "removingPackage":Z
    .end local v37    # "changeUserId":I
    .restart local v12    # "removingPackage":Z
    .restart local v15    # "changeUserId":I
    :cond_15
    move/from16 v36, v12

    move/from16 v37, v15

    .end local v12    # "removingPackage":Z
    .end local v15    # "changeUserId":I
    .restart local v36    # "removingPackage":Z
    .restart local v37    # "changeUserId":I
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v9

    move/from16 v10, v36

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1176
    .end local v36    # "removingPackage":Z
    .local v10, "removingPackage":Z
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v9

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1177
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v9

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 1178
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v9

    move/from16 v11, v37

    invoke-virtual {v9, v10, v11, v0, v4}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    .line 1179
    .end local v37    # "changeUserId":I
    .local v11, "changeUserId":I
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1181
    .end local v0    # "pkgList":[Ljava/lang/String;
    .end local v4    # "uidList":[I
    .end local v10    # "removingPackage":Z
    .end local v11    # "changeUserId":I
    move v0, v5

    move/from16 v5, v21

    move/from16 v4, v34

    .end local v21    # "packageChanged":Z
    .end local v34    # "queryRemove":Z
    .local v0, "queryRestart":Z
    .local v4, "queryRemove":Z
    .local v5, "packageChanged":Z
    :cond_16
    return-void
.end method
