.class public Landroid/security/keystore/recovery/LockScreenRequiredException;
.super Ljava/security/GeneralSecurityException;
.source "LockScreenRequiredException.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
