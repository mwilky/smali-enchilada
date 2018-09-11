.class public Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;
.super Landroid/app/Activity;
.source "UninstallUninstalling.java"

# interfaces
.implements Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "com.android.packageinstaller.ACTION_UNINSTALL_COMMIT"

.field static final EXTRA_APP_LABEL:Ljava/lang/String; = "com.android.packageinstaller.extra.APP_LABEL"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UNINSTALL_ID:Ljava/lang/String; = "com.android.packageinstaller.UNINSTALL_ID"


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mLabel:Ljava/lang/String;

.field private mReturnResult:Z

.field private mUninstallId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;

    .line 45
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    .line 63
    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->setFinishOnTouchOutside(Z)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iput-object v3, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mCallback:Landroid/os/IBinder;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mReturnResult:Z

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    .line 73
    const/4 v3, -0x1

    if-nez v2, :cond_2

    .line 74
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 76
    .local v4, "allUsers":Z
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.USER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 79
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    .line 80
    .local v6, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "dialog"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    .line 81
    .local v7, "prev":Landroid/app/Fragment;
    if-eqz v7, :cond_0

    .line 82
    invoke-virtual {v6, v7}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 84
    :cond_0
    new-instance v8, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;

    invoke-direct {v8}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;-><init>()V

    .line 85
    .local v8, "dialog":Landroid/app/DialogFragment;
    invoke-virtual {v8, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 86
    const-string v9, "dialog"

    invoke-virtual {v8, v6, v9}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 88
    const/high16 v9, -0x80000000

    invoke-static {v1, v9, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I

    move-result v9

    iput v9, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    .line 91
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.packageinstaller.ACTION_UNINSTALL_COMMIT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v9, "broadcastIntent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    const-string v10, "EventResultPersister.EXTRA_ID"

    iget v11, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget v10, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    const/high16 v11, 0x8000000

    invoke-static {v1, v10, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10
    :try_end_0
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v12

    new-instance v13, Landroid/content/pm/VersionedPackage;

    iget-object v11, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v11, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v4, :cond_1

    const/4 v0, 0x2

    .line 104
    :goto_0
    move v15, v0

    goto :goto_1

    .line 103
    :cond_1
    goto :goto_0

    .line 104
    :goto_1
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    .line 100
    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v4    # "allUsers":Z
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "transaction":Landroid/app/FragmentTransaction;
    .end local v7    # "prev":Landroid/app/Fragment;
    .end local v8    # "dialog":Landroid/app/DialogFragment;
    .end local v9    # "broadcastIntent":Landroid/content/Intent;
    .end local v10    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_2
    goto :goto_3

    .line 112
    :catch_1
    move-exception v0

    goto :goto_4

    .line 109
    :cond_2
    const-string v0, "com.android.packageinstaller.UNINSTALL_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    .line 110
    iget v0, v1, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    invoke-static {v1, v0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I
    :try_end_2
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :goto_3
    goto :goto_5

    .line 112
    :goto_4
    nop

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Fails to start uninstall"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->onResult(IILjava/lang/String;)V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 161
    iget v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->removeObserver(Landroid/content/Context;I)V

    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onResult(IILjava/lang/String;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "legacyStatus"    # I
    .param p3, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mCallback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mCallback:Landroid/os/IBinder;

    .line 136
    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    .line 138
    .local v0, "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 139
    :catch_0
    move-exception v1

    .line 141
    .end local v0    # "observer":Landroid/content/pm/IPackageDeleteObserver2;
    :goto_0
    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mReturnResult:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "result":Landroid/content/Intent;
    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    if-nez p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    .line 147
    :cond_1
    nop

    .line 146
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->setResult(ILandroid/content/Intent;)V

    .line 148
    .end local v0    # "result":Landroid/content/Intent;
    goto :goto_2

    .line 151
    :cond_2
    if-eqz p1, :cond_3

    .line 152
    const v0, 0x7f121212

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mLabel:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->finish()V

    .line 157
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "com.android.packageinstaller.UNINSTALL_ID"

    iget v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->mUninstallId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    return-void
.end method
