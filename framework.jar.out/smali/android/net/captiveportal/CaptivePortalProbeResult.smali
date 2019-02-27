.class public final Landroid/net/captiveportal/CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "CaptivePortalProbeResult.java"


# static fields
.field public static final FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field public static final FAILED_CODE:I = 0x257

.field public static final PORTAL_CODE:I = 0x12e

.field public static final SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field public static final SUCCESS_CODE:I = 0xcc

.field private static final TAG:Ljava/lang/String; = "CaptivePortalProbeResult"

.field private static final blacklisted_redirect_url:[Ljava/lang/String;

.field private static captive_portal_url_blacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final detectUrl:Ljava/lang/String;

.field private final mHttpResponseCode:I

.field public final probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field public final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0xcc

    invoke-direct {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    const-string v0, "http://wifi.shouji.360.cn/index.html"

    const-string v1, "http://120.197.5.148:8000/gmcc/Tips"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->blacklisted_redirect_url:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->captive_portal_url_blacklist:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->captive_portal_url_blacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->captive_portal_url_blacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CaptivePortalProbeResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captive_portal_url_blacklist redirect url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " httpResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xcc

    const/4 p2, 0x0

    goto :goto_2

    :cond_0
    goto :goto_0

    :cond_1
    nop

    :goto_1
    move v0, v1

    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->blacklisted_redirect_url:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->blacklisted_redirect_url:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CaptivePortalProbeResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blacklisted redirect url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " httpResponseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xcc

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iput p1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    iput-object p2, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    return-void
.end method

.method public static setCaptivePortalUrlBlacklist(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->captive_portal_url_blacklist:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPortal()Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHttpResponseCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", redirectUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detectUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", probeSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
