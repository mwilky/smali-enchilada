.class public Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "AllowAllHostnameVerifier.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "ALLOW_ALL"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;

    .line 52
    return-void
.end method
