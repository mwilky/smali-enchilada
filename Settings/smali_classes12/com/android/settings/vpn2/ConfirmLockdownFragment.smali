.class public Lcom/android/settings/vpn2/ConfirmLockdownFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfirmLockdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;
    }
.end annotation


# static fields
.field private static final ARG_ALWAYS_ON:Ljava/lang/String; = "always_on"

.field private static final ARG_LOCKDOWN_DST:Ljava/lang/String; = "lockdown_new"

.field private static final ARG_LOCKDOWN_SRC:Ljava/lang/String; = "lockdown_old"

.field private static final ARG_OPTIONS:Ljava/lang/String; = "options"

.field private static final ARG_REPLACING:Ljava/lang/String; = "replacing"

.field private static final TAG:Ljava/lang/String; = "ConfirmLockdown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static shouldShow(ZZZ)Z
    .locals 1

    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ConfirmLockdown"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "replacing"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "always_on"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "lockdown_old"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "lockdown_new"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "options"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v1, Lcom/android/settings/vpn2/ConfirmLockdownFragment;

    invoke-direct {v1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "ConfirmLockdown"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x224

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "always_on"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "lockdown_new"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;->onConfirmLockdown(Landroid/os/Bundle;ZZ)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "replacing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "always_on"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "lockdown_old"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "lockdown_new"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v4, 0x7f121391

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v4, 0x7f12138f

    goto :goto_0

    :cond_1
    const v4, 0x7f121397

    :goto_0
    if-eqz v0, :cond_2

    const v5, 0x7f12138b

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    const v5, 0x7f12139c

    goto :goto_1

    :cond_3
    const v5, 0x7f120a37

    :goto_1
    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    const v6, 0x7f12138d

    goto :goto_2

    :cond_4
    const v6, 0x7f121373

    :goto_2
    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    const v6, 0x7f12138c

    goto :goto_3

    :cond_6
    const v6, 0x7f12138e

    :goto_3
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f12038a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method
