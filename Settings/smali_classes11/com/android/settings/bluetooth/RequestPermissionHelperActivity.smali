.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_INTERNAL_REQUEST_BT_OFF:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

.field public static final ACTION_INTERNAL_REQUEST_BT_ON:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

.field public static final EXTRA_APP_LABEL:Ljava/lang/String; = "com.android.settings.bluetooth.extra.APP_LABEL"

.field private static final TAG:Ljava/lang/String; = "RequestPermissionHelperActivity"


# instance fields
.field private mAppLabel:Ljava/lang/CharSequence;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mRequest:I

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v5, 0x78

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    :cond_1
    const-string v3, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v4, "RequestPermissionHelperActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "com.android.settings.bluetooth.extra.APP_LABEL"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return v4

    :cond_4
    return v1
.end method


# virtual methods
.method createDialog()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const v1, 0x7f12027a

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f12027b

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_4

    :cond_2
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const v1, 0x7f12027e

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const v1, 0x7f120283

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    const v1, 0x7f120281

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    const v1, 0x7f120282

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_4

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    const v1, 0x7f12027f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAppLabel:Ljava/lang/CharSequence;

    aput-object v5, v4, v2

    iget v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    const v1, 0x7f120280

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    nop

    :goto_4
    const v1, 0x7f1200f1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f120536

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mRequest:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    :pswitch_1
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v2, "no_bluetooth"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const-string v2, "no_bluetooth"

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->enable()Z

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    :goto_0
    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->dismiss()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    return-void
.end method
