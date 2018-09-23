.class public Lcom/android/settings/password/ManagedLockPasswordProvider;
.super Ljava/lang/Object;
.source "ManagedLockPasswordProvider.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;
    .locals 1

    new-instance v0, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;-><init>()V

    return-object v0
.end method


# virtual methods
.method createIntent(ZLjava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getPickerOptionTitle(Z)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method isManagedPasswordChoosable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isSettingManagedPasswordSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
