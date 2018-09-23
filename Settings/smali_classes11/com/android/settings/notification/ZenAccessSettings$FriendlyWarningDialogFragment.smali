.class public Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# static fields
.field static final KEY_LABEL:Ljava/lang/String; = "l"

.field static final KEY_PKG:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22b

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "l"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v6, 0x7f121528

    invoke-virtual {v3, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f121527

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;

    invoke-direct {v6, p0, v1}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;Ljava/lang/String;)V

    const v7, 0x7f120a37

    invoke-virtual {v4, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;)V

    const v7, 0x7f12038a

    invoke-virtual {v4, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "l"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method
