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

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x5

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_1
    move/from16 v21, v5

    move v5, v0

    const-string v0, "android.intent.extra.user_handle"

    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v13

    :goto_0
    move v12, v0

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

    :cond_3
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v9, "android.intent.extra.changed_uid_list"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    :goto_1
    move/from16 v34, v4

    move-object v4, v11

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_4
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v9, v14, [I

    const-string v10, "android.intent.extra.UID"

    const/4 v13, -0x1

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v13, 0x0

    aput v10, v9, v13

    move-object v11, v9

    goto :goto_1

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_8

    return-void

    :cond_8
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_9

    return-void

    :cond_9
    if-eqz v21, :cond_e

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v14, -0x1

    if-eq v15, v14, :cond_a

    move v14, v15

    goto :goto_2

    :cond_a
    nop

    const/4 v14, 0x0

    :goto_2
    invoke-interface {v0, v13, v14}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x1

    if-eq v0, v14, :cond_b

    if-nez v0, :cond_c

    :cond_b
    const/4 v0, 0x0

    move v6, v0

    :cond_c
    :goto_3
    move/from16 v34, v4

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    sget-boolean v14, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v14, :cond_d

    const-string v14, "NotificationService"

    move/from16 v34, v4

    const-string v4, "Exception trying to look up app enabled setting"

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_d
    move/from16 v34, v4

    :goto_4
    goto :goto_5

    :cond_e
    move/from16 v34, v4

    :goto_5
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    new-array v10, v4, [I

    const-string v4, "android.intent.extra.UID"

    move/from16 v35, v6

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v10, v14

    move-object v11, v10

    move-object v4, v11

    move/from16 v6, v35

    :goto_6
    if-eqz v0, :cond_15

    array-length v9, v0

    if-lez v9, :cond_15

    array-length v13, v0

    move v11, v14

    :goto_7
    if-ge v11, v13, :cond_15

    aget-object v33, v0, v11

    if-eqz v6, :cond_12

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

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

    move/from16 v24, v11

    move/from16 v36, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v37, v15

    const/16 v27, 0x1

    goto :goto_a

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

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v13, v17

    const/16 v27, 0x1

    move/from16 v14, v18

    move/from16 v37, v15

    move/from16 v15, v19

    move/from16 v16, v22

    move/from16 v17, v37

    move/from16 v18, v20

    move-object/from16 v19, v23

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_a

    :cond_12
    move/from16 v24, v11

    move/from16 v36, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move/from16 v37, v15

    const/16 v27, 0x1

    if-eqz v7, :cond_13

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_a

    :cond_13
    if-eqz v8, :cond_14

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    :cond_14
    :goto_a
    add-int/lit8 v11, v24, 0x1

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v12, v36

    move/from16 v15, v37

    goto/16 :goto_7

    :cond_15
    move/from16 v36, v12

    move/from16 v37, v15

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v9

    move/from16 v10, v36

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v9

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v9

    invoke-virtual {v9, v10, v0, v4}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v9

    move/from16 v11, v37

    invoke-virtual {v9, v10, v11, v0, v4}, Lcom/android/server/notification/RankingHelper;->onPackagesChanged(ZI[Ljava/lang/String;[I)V

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    move v0, v5

    move/from16 v5, v21

    move/from16 v4, v34

    :cond_16
    return-void
.end method
