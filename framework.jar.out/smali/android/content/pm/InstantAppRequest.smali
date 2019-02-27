.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final callingPackage:Ljava/lang/String;

.field public final digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

.field public final origIntent:Landroid/content/Intent;

.field public final resolveForStart:Z

.field public final resolvedType:Ljava/lang/String;

.field public final responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final userId:I

.field public final verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iput p5, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    iput-object p6, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    iput-boolean p7, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;->UNDEFINED:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    iput-object v0, p0, Landroid/content/pm/InstantAppRequest;->digest:Landroid/content/pm/InstantAppResolveInfo$InstantAppDigest;

    :goto_0
    return-void
.end method
