.class public abstract Lcom/oneplus/settings/ui/CustomDialogPreference;
.super Landroid/support/v7/preference/Preference;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogLayoutResId:I

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mNeutralButtonText:Ljava/lang/CharSequence;

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    return v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNeutralButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(I)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    iget v0, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->isDialogShowing:Z

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/ui/CustomDialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialogLayoutResId:I

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNeutralButtonText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setNeutralButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNeutralButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mWhichButtonClicked:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f130402

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/CustomDialogPreference;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method
