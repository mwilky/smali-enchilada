.class public Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AutoSyncDataPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AutoSyncDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"

.field private static final SAVE_USER_HANDLE:Ljava/lang/String; = "userHandle"


# instance fields
.field mEnabling:Z

.field mPreference:Landroid/support/v14/preference/SwitchPreference;

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ZLandroid/os/UserHandle;Landroid/support/v14/preference/SwitchPreference;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;-><init>()V

    iput-boolean p1, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    iput-object p2, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iput-object p3, v0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x217

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "enabling"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    const-string v1, "userHandle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    const v2, 0x7f1204a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f12049f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    const v2, 0x7f1204a2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f1204a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "userHandle"

    iget-object v1, p0, Lcom/android/settings/users/AutoSyncDataPreferenceController$ConfirmAutoSyncChangeFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
