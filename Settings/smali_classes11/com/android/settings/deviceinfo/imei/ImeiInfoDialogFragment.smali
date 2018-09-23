.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ImeiInfoDialogFragment.java"


# static fields
.field private static final DIALOG_TITLE_BUNDLE_KEY:Ljava/lang/String; = "arg_key_dialog_title"

.field private static final SLOT_ID_BUNDLE_KEY:Ljava/lang/String; = "arg_key_slot_id"

.field static final TAG:Ljava/lang/String; = "ImeiInfoDialog"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 4
    .param p0    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ImeiInfoDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_key_slot_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;-><init>()V

    invoke-virtual {v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const-string v3, "ImeiInfoDialog"

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4d8

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_key_slot_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "arg_key_dialog_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x104000a

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0085

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->populateImeiInfo()V

    iget-object v5, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public removeViewFromScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
