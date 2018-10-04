.class Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;
.super Landroid/net/captiveportal/CaptivePortalProbeSpec;
.source "CaptivePortalProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/captiveportal/CaptivePortalProbeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexMatchProbeSpec"
.end annotation


# instance fields
.field final mLocationHeaderRegex:Ljava/util/regex/Pattern;

.field final mStatusRegex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    iput-object p3, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    iput-object p4, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    invoke-static {p2, v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xcc

    goto :goto_0

    :cond_0
    const/16 v2, 0x12e

    :goto_0
    new-instance v3, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, p2, v4, p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V

    return-object v3
.end method
