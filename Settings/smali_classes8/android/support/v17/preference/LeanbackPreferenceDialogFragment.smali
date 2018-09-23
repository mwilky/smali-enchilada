.class public Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;
.super Landroid/app/Fragment;
.source "LeanbackPreferenceDialogFragment.java"


# static fields
.field public static final ARG_KEY:Ljava/lang/String; = "key"


# instance fields
.field private mPreference:Landroid/support/v7/preference/DialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v17/preference/LeanbackPreferenceFragmentTransitionHelperApi21;->addTransitions(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreference()Landroid/support/v7/preference/DialogPreference;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    invoke-interface {v1, v0}, Landroid/support/v7/preference/DialogPreference$TargetFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/DialogPreference;

    iput-object v2, p0, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    :cond_0
    iget-object v0, p0, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->mPreference:Landroid/support/v7/preference/DialogPreference;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/preference/LeanbackPreferenceDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/preference/DialogPreference$TargetFragment;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must implement TargetFragment interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
