.class public Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;
.super Landroid/app/DialogFragment;
.source "BgOptimizeDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_DEFAULT_ON:Ljava/lang/String; = "default_on"


# instance fields
.field private mCurrentOptimized:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mOptionNoOptimze:Landroid/widget/Checkable;

.field private mOptionOptimze:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120748

    goto :goto_0

    :cond_0
    const v1, 0x7f12074a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateViews()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->setAppControlMode(Ljava/lang/String;II)I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->updateViews()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mCurrentOptimized:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12038a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1205b4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a026a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionNoOptimze:Landroid/widget/Checkable;

    invoke-virtual {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0269

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->setup(Landroid/view/View;Z)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->mOptionOptimze:Landroid/widget/Checkable;

    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->updateViews()V

    return-void
.end method

.method public setup(Landroid/view/View;Z)Landroid/widget/Checkable;
    .locals 2

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const v1, 0x7f12074a

    goto :goto_0

    :cond_0
    const v1, 0x7f120748

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    const v1, 0x7f1209ca

    goto :goto_1

    :cond_1
    const v1, 0x7f120dd8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    return-object v0
.end method
