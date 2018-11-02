.class public Lcom/android/settings/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SubSettings;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
    }
.end annotation


# static fields
.field public static final ANNOTATION_ADMIN_DETAILS:Ljava/lang/String; = "admin_details"

.field public static final ANNOTATION_URL:Ljava/lang/String; = "url"

.field private static final LOCKOUT_DURATION:J = 0x7530L

.field protected static final RESULT_FINISHED:I = 0x1

.field protected static final RESULT_SKIP:I = 0x2

.field protected static final RESULT_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FingerprintSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f120fd0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
