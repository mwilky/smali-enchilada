.class public Lcom/android/settings/security/InstallCredentialsPreferenceController;
.super Lcom/android/settings/security/RestrictedEncryptionPreferenceController;
.source "InstallCredentialsPreferenceController.java"


# static fields
.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "no_config_credentials"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/RestrictedEncryptionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "credentials_install"

    return-object v0
.end method
