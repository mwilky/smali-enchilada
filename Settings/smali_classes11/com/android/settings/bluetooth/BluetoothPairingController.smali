.class public Lcom/android/settings/bluetooth/BluetoothPairingController;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$BluetoothPairingDialogListener;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field public static final CONFIRMATION_DIALOG:I = 0x1

.field public static final DISPLAY_PASSKEY_DIALOG:I = 0x2

.field public static final INVALID_DIALOG_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BTPairingController"

.field public static final USER_ENTRY_DIALOG:I


# instance fields
.field private mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mPasskey:I

.field private mPasskeyFormatted:Ljava/lang/String;

.field private mPbapAllowed:Z

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field private mType:I

.field private mUserInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 71
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 73
    const-string v0, ""

    .line 74
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    .line 81
    const-string v1, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    .line 82
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 84
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->formatKey(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    .line 86
    return-void

    .line 77
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not find BluetoothDevice"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Could not obtain LocalBluetoothManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private formatKey(I)Ljava/lang/String;
    .locals 5
    .param p1, "passkey"    # I

    .line 365
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 371
    :pswitch_0
    const-string v0, "%04d"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 368
    :cond_0
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%06d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 2
    .param p1, "passkey"    # Ljava/lang/String;

    .line 385
    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog accepted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 416
    const-string v0, "BTPairingController"

    const-string v1, "Incorrect pairing type received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    .line 413
    goto :goto_0

    .line 409
    :pswitch_1
    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 404
    goto :goto_0

    .line 397
    :pswitch_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 398
    .local v0, "pass":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    .line 399
    goto :goto_0

    .line 389
    .end local v0    # "pass":I
    :pswitch_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 390
    .local v0, "pinBytes":[B
    if-nez v0, :cond_0

    .line 391
    return-void

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 394
    nop

    .line 418
    .end local v0    # "pinBytes":[B
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 436
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContactSharingState()Z
    .locals 4

    .line 167
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v3, 0x408

    if-ne v0, v3, :cond_0

    .line 175
    return v2

    .line 171
    :pswitch_0
    return v1

    .line 169
    :pswitch_1
    return v2

    .line 177
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceMaxPasskeyLength()I
    .locals 2

    .line 254
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 263
    const/4 v0, 0x0

    return v0

    .line 260
    :pswitch_0
    const/4 v0, 0x6

    return v0

    .line 257
    :cond_0
    :pswitch_1
    const/16 v0, 0x10

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVariantMessageHintId()I
    .locals 2

    .line 235
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 244
    const/4 v0, -0x1

    return v0

    .line 241
    :pswitch_0
    const v0, 0x7f120311

    return v0

    .line 237
    :cond_0
    const v0, 0x7f120312

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceVariantMessageId()I
    .locals 2

    .line 215
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 224
    const/4 v0, -0x1

    return v0

    .line 221
    :pswitch_0
    const v0, 0x7f1202ce

    return v0

    .line 218
    :cond_0
    :pswitch_1
    const v0, 0x7f1202cf

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDialogType()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 139
    const/4 v0, -0x1

    return v0

    .line 136
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 132
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 127
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPairingContent()Ljava/lang/String;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-object v0

    .line 343
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasPairingContent()Z
    .locals 2

    .line 321
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 328
    const/4 v0, 0x0

    return v0

    .line 325
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDisplayPairingKeyVariant()Z
    .locals 1

    .line 304
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 310
    const/4 v0, 0x0

    return v0

    .line 308
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPasskeyValid(Landroid/text/Editable;)Z
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .line 204
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 205
    .local v0, "requires16Digits":Z
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    invoke-interface {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected notifyDialogDisplayed()V
    .locals 2

    .line 289
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 291
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 293
    .local v0, "pinBytes":[B
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 295
    .end local v0    # "pinBytes":[B
    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    .line 425
    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 427
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 90
    if-eqz p2, :cond_0

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    goto :goto_0

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    .line 95
    :goto_0
    return-void
.end method

.method public onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    .line 115
    return-void
.end method

.method public onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 2
    .param p1, "dialog"    # Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapAllowed:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    .line 109
    :goto_1
    return-void
.end method

.method public pairingCodeIsAlphanumeric()Z
    .locals 2

    .line 274
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 279
    return v1

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setContactSharingState()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 187
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v2, 0x408

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 190
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 192
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 195
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateUserInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 354
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    .line 355
    return-void
.end method
