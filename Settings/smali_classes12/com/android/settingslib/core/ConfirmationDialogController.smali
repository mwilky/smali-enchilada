.class public interface abstract Lcom/android/settingslib/core/ConfirmationDialogController;
.super Ljava/lang/Object;
.source "ConfirmationDialogController.java"


# virtual methods
.method public abstract dismissConfirmationDialog()V
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public abstract isConfirmationDialogShowing()Z
.end method

.method public abstract showConfirmationDialog(Landroid/support/v7/preference/Preference;)V
    .param p1    # Landroid/support/v7/preference/Preference;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
