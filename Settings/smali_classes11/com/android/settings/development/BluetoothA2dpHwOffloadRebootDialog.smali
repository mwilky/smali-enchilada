.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothA2dpHwOffloadRebootDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BluetoothA2dpHwOffloadReboot"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;

    invoke-direct {v1}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    const-string v2, "BluetoothA2dpHwOffloadReboot"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5a1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-interface {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;->onA2dpHwDialogConfirmed()V

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1202b1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202b2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202b0

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1202af

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
