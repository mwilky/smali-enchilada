.class Lcom/android/settings/TrustedCredentialsDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "TrustedCredentialsDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;,
        Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;
    }
.end annotation


# instance fields
.field private final mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;

    .line 55
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;-><init>(Landroid/app/Activity;Lcom/android/settings/TrustedCredentialsDialogBuilder$DelegateInterface;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    .line 58
    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->initDefaultBuilderParams()V

    .line 59
    return-void
.end method

.method private initDefaultBuilderParams()V
    .locals 2

    .line 80
    const v0, 0x1040638

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->access$000(Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    const/4 v0, 0x0

    const v1, 0x7f1211dc

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v1, 0x104000a

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    .line 73
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 74
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->setDialog(Landroid/app/AlertDialog;)V

    .line 76
    return-object v0
.end method

.method public setCertHolder(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;
    .locals 2
    .param p1, "certHolder"    # Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    goto :goto_0

    .line 63
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    aput-object p1, v1, v0

    .line 62
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/TrustedCredentialsDialogBuilder;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsDialogBuilder;
    .locals 1
    .param p1, "certHolders"    # [Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    .line 67
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsDialogBuilder;->mDialogEventHandler:Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;

    invoke-virtual {v0, p1}, Lcom/android/settings/TrustedCredentialsDialogBuilder$DialogEventHandler;->setCertHolders([Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    .line 68
    return-object p0
.end method
