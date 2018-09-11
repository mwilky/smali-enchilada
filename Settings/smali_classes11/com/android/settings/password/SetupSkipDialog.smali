.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final ARG_FRP_SUPPORTED:Ljava/lang/String; = "frp_supported"

.field public static final EXTRA_FRP_SUPPORTED:Ljava/lang/String; = ":settings:frp_supported"

.field public static final RESULT_SKIP:I = 0xb

.field private static final TAG_SKIP_DIALOG:Ljava/lang/String; = "skip_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3
    .param p0, "isFrpSupported"    # Z

    .line 46
    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    .line 47
    .local v0, "dialog":Lcom/android/settings/password/SetupSkipDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "frp_supported"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 50
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 55
    const/16 v0, 0x23d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .line 80
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/password/SetupSkipDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/password/SetupSkipDialog$1;-><init>(Lcom/android/settings/password/SetupSkipDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    const v2, 0x7f121052

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    const v2, 0x7f1206ca

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 69
    const v2, 0x7f12086a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 70
    const-string v2, "frp_supported"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    const v2, 0x7f120869

    goto :goto_0

    .line 73
    :cond_0
    const v2, 0x7f120b78

    .line 70
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 66
    return-object v1
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/app/FragmentManager;

    .line 123
    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 124
    return-void
.end method
