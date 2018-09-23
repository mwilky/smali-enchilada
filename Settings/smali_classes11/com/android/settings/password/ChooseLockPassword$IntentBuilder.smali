.class public Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "extra_require_password"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setChallenge(J)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "has_challenge"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "challenge"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordLengthRange(II)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setPasswordQuality(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method
