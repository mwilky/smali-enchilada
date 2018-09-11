.class public Lcom/android/settings/password/ConfirmLockPassword;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-void

    :array_0
    .array-data 4
        0x7f1208a2
        0x7f120898
        0x7f1208a3
        0x7f120899
        0x7f1208bd
        0x7f1208bb
        0x7f1208c0
        0x7f1208be
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .line 54
    sget-object v0, Lcom/android/settings/password/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 74
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 80
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a02fa

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 88
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_0

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    .line 91
    :cond_0
    return-void
.end method
