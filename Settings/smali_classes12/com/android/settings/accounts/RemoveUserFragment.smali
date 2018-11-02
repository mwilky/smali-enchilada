.class public Lcom/android/settings/accounts/RemoveUserFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveUserFragment.java"


# static fields
.field private static final ARG_USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(I)Lcom/android/settings/accounts/RemoveUserFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/accounts/RemoveUserFragment;

    invoke-direct {v1}, Lcom/android/settings/accounts/RemoveUserFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/RemoveUserFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x216

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveUserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/RemoveUserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/accounts/RemoveUserFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/accounts/RemoveUserFragment$1;-><init>(Lcom/android/settings/accounts/RemoveUserFragment;I)V

    invoke-static {v1, v0, v2}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    return-object v1
.end method
