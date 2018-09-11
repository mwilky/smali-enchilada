.class public Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;
.super Landroid/content/BroadcastReceiver;
.source "OPUninstallFinish.java"


# static fields
.field static final EXTRA_APP_LABEL:Ljava/lang/String; = "com.android.packageinstaller.extra.APP_LABEL"

.field static final EXTRA_UNINSTALL_ID:Ljava/lang/String; = "com.android.packageinstaller.extra.UNINSTALL_ID"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UNINSTALL_FAILURE_CHANNEL:Ljava/lang/String; = "uninstall failure"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "builder"    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 267
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 268
    const v2, 0x7f0801c1

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 269
    const v3, 0x7f1208ed

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 271
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 267
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 272
    return-void
.end method

.method private addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "builder"    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    new-instance v1, Landroid/app/Notification$Action$Builder;

    .line 248
    const v2, 0x7f080214

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 249
    const v3, 0x7f1208f5

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 251
    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 247
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 252
    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 3
    .param p1, "userManager"    # Landroid/os/UserManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userId"    # I
    .param p3, "profileId"    # I

    .line 217
    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    .line 218
    return v0

    .line 221
    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 222
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.settings.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method private setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 233
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 234
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 58
    move-object/from16 v3, p2

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 59
    .local v5, "returnCode":I
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstall finished extras="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    .line 62
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void

    .line 66
    :cond_0
    const-string v0, "com.android.packageinstaller.extra.UNINSTALL_ID"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 67
    .local v6, "uninstallId":I
    const-string v0, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 69
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string v0, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "appLabel":Ljava/lang/String;
    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 72
    .local v9, "allUsers":Z
    const-class v0, Landroid/app/NotificationManager;

    .line 73
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/NotificationManager;

    .line 74
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/UserManager;

    .line 76
    .local v11, "userManager":Landroid/os/UserManager;
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v12, "uninstall failure"

    const v13, 0x7f121216

    .line 78
    invoke-virtual {v2, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {v0, v12, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v12, v0

    .line 80
    .local v12, "uninstallFailureChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 82
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v13, "uninstall failure"

    invoke-direct {v0, v2, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    .line 85
    .local v13, "uninstallFailedNotification":Landroid/app/Notification$Builder;
    if-eqz v5, :cond_e

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1

    .line 187
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uninstall failed for "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " with code "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .local v19, "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :goto_0
    move-object/from16 v19, v12

    goto/16 :goto_a

    .line 93
    .end local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :cond_1
    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 95
    .local v14, "legacyStatus":I
    const/4 v0, -0x4

    if-eq v14, v0, :cond_7

    const/4 v0, -0x2

    if-eq v14, v0, :cond_2

    .line 182
    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uninstall blocked for "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with legacy code "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    goto :goto_0

    .line 97
    :cond_2
    const-string v0, "device_policy"

    .line 98
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    .line 100
    .local v4, "dpm":Landroid/app/admin/IDevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 101
    .local v15, "myUserId":I
    const/16 v17, 0x0

    .line 102
    .local v17, "otherBlockingUser":Landroid/content/pm/UserInfo;
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v3

    move-object v3, v0

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 105
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v11, v15, v0}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    nop

    .line 102
    move-object/from16 v3, v18

    goto :goto_1

    .line 110
    :cond_3
    :try_start_0
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v19, v12

    :try_start_1
    iget v12, v3, Landroid/content/pm/UserInfo;->id:I

    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    invoke-interface {v4, v0, v12}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    .line 111
    move-object/from16 v17, v3

    .line 112
    nop

    .line 118
    move-object/from16 v0, v17

    goto :goto_4

    .line 116
    :cond_4
    goto :goto_3

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :catch_1
    move-exception v0

    move-object/from16 v19, v12

    .line 115
    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :goto_2
    sget-object v12, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v20, v3

    const-string v3, "Failed to talk to package manager"

    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .local v20, "user":Landroid/content/pm/UserInfo;
    invoke-static {v12, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v20    # "user":Landroid/content/pm/UserInfo;
    :goto_3
    nop

    .line 102
    move-object/from16 v3, v18

    move-object/from16 v12, v19

    goto :goto_1

    .line 118
    .end local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :cond_5
    move-object/from16 v19, v12

    move-object/from16 v0, v17

    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .end local v17    # "otherBlockingUser":Landroid/content/pm/UserInfo;
    .local v0, "otherBlockingUser":Landroid/content/pm/UserInfo;
    .restart local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :goto_4
    if-nez v0, :cond_6

    .line 119
    sget-object v3, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "Uninstall failed because "

    .end local v4    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    .local v21, "dpm":Landroid/app/admin/IDevicePolicyManager;
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is a device admin"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 123
    const v3, 0x7f121213

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 126
    .end local v21    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    .restart local v4    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    :cond_6
    move-object/from16 v21, v4

    .end local v4    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    .restart local v21    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    sget-object v3, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Uninstall failed because "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is a device admin of user "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v3, 0x7f121214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v12, v16

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    .line 133
    goto/16 :goto_a

    .line 136
    .end local v0    # "otherBlockingUser":Landroid/content/pm/UserInfo;
    .end local v15    # "myUserId":I
    .end local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .end local v21    # "dpm":Landroid/app/admin/IDevicePolicyManager;
    .restart local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :cond_7
    move-object/from16 v19, v12

    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    const-string v0, "package"

    .line 137
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 136
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 139
    .local v3, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 140
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v12, -0x2710

    .line 141
    .local v12, "blockingUserId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_9

    .line 142
    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    move-object/from16 v22, v0

    .line 144
    .local v22, "user":Landroid/content/pm/UserInfo;
    :try_start_2
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v23, v4

    move/from16 v24, v12

    move-object/from16 v4, v22

    :try_start_3
    iget v12, v4, Landroid/content/pm/UserInfo;->id:I

    .end local v12    # "blockingUserId":I
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .local v4, "user":Landroid/content/pm/UserInfo;
    .local v23, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v24, "blockingUserId":I
    invoke-interface {v3, v0, v12}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 146
    iget v0, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move v12, v0

    .line 147
    .end local v24    # "blockingUserId":I
    .restart local v12    # "blockingUserId":I
    nop

    .line 155
    move-object/from16 v25, v3

    goto :goto_8

    .line 152
    .end local v12    # "blockingUserId":I
    .restart local v24    # "blockingUserId":I
    :cond_8
    nop

    .line 141
    move-object/from16 v25, v3

    goto :goto_7

    .line 149
    :catch_2
    move-exception v0

    goto :goto_6

    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "blockingUserId":I
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "blockingUserId":I
    .restart local v22    # "user":Landroid/content/pm/UserInfo;
    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    move/from16 v24, v12

    move-object/from16 v4, v22

    .line 151
    .end local v12    # "blockingUserId":I
    .end local v22    # "user":Landroid/content/pm/UserInfo;
    .local v0, "e":Landroid/os/RemoteException;
    .local v4, "user":Landroid/content/pm/UserInfo;
    .restart local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v24    # "blockingUserId":I
    :goto_6
    sget-object v12, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v25, v3

    const-string v3, "Failed to talk to package manager"

    .end local v3    # "packageManager":Landroid/content/pm/IPackageManager;
    .local v25, "packageManager":Landroid/content/pm/IPackageManager;
    invoke-static {v12, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :goto_7
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .local v0, "i":I
    move-object/from16 v4, v23

    move/from16 v12, v24

    move-object/from16 v3, v25

    goto :goto_5

    .line 155
    .end local v0    # "i":I
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v24    # "blockingUserId":I
    .end local v25    # "packageManager":Landroid/content/pm/IPackageManager;
    .restart local v3    # "packageManager":Landroid/content/pm/IPackageManager;
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v12    # "blockingUserId":I
    :cond_9
    move-object/from16 v25, v3

    move-object/from16 v23, v4

    move/from16 v24, v12

    .end local v3    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v4    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v25    # "packageManager":Landroid/content/pm/IPackageManager;
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 156
    .local v0, "myUserId":I
    invoke-direct {v1, v11, v0, v12}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 157
    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_9

    .line 159
    :cond_a
    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 162
    :goto_9
    const/16 v3, -0x2710

    if-ne v12, v3, :cond_b

    .line 163
    sget-object v3, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Uninstall failed for "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with code "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " no blocking user"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 166
    :cond_b
    if-nez v12, :cond_c

    .line 167
    const v3, 0x7f12120c

    .line 168
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 170
    :cond_c
    if-eqz v9, :cond_d

    .line 171
    const v3, 0x7f121206

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 175
    :cond_d
    const v3, 0x7f12120d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    .line 179
    nop

    .line 192
    .end local v0    # "myUserId":I
    .end local v12    # "blockingUserId":I
    .end local v14    # "legacyStatus":I
    .end local v23    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "packageManager":Landroid/content/pm/IPackageManager;
    :goto_a
    const v0, 0x7f121212

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    .line 193
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 195
    const v0, 0x7f08018d

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 196
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v10, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 197
    return-void

    .line 87
    .end local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .local v12, "uninstallFailureChannel":Landroid/app/NotificationChannel;
    :cond_e
    move-object/from16 v19, v12

    .end local v12    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    .restart local v19    # "uninstallFailureChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v10, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 88
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->notifyPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    const v0, 0x7f121210

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v4, v12

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    return-void
.end method
