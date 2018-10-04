.class public Landroid/telephony/mbms/DownloadRequest$Builder;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIntent:Ljava/lang/String;

.field private destination:Landroid/net/Uri;

.field private fileServiceId:Ljava/lang/String;

.field private source:Landroid/net/Uri;

.field private subscriptionId:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iput-object p2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source and destination URIs must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromDownloadRequest(Landroid/telephony/mbms/DownloadRequest;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 3

    new-instance v0, Landroid/telephony/mbms/DownloadRequest$Builder;

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$100(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$200(Landroid/telephony/mbms/DownloadRequest;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$000(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$300(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/mbms/DownloadRequest$Builder;->setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/mbms/DownloadRequest;->access$400(Landroid/telephony/mbms/DownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    return-object v0
.end method

.method public static fromSerializedRequest([B)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    nop

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;

    new-instance v2, Landroid/telephony/mbms/DownloadRequest$Builder;

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$600(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$700(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/telephony/mbms/DownloadRequest$Builder;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$800(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v3

    iput v3, v2, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$900(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$1000(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;->access$1100(Landroid/telephony/mbms/DownloadRequest$SerializationDataContainer;)I

    move-result v3

    iput v3, v2, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "MbmsDownloadRequest"

    const-string v2, "Got ClassNotFoundException trying to parse opaque data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "MbmsDownloadRequest"

    const-string v2, "Got IOException trying to parse opaque data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public build()Landroid/telephony/mbms/DownloadRequest;
    .locals 9

    new-instance v8, Landroid/telephony/mbms/DownloadRequest;

    iget-object v1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->source:Landroid/net/Uri;

    iget-object v3, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->destination:Landroid/net/Uri;

    iget v4, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    iget-object v5, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget v6, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->version:I

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/mbms/DownloadRequest;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ILandroid/telephony/mbms/DownloadRequest$1;)V

    return-object v8
.end method

.method public setAppIntent(Landroid/content/Intent;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->appIntent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xc350

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App intent must not exceed length 50000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceId(Ljava/lang/String;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceInfo(Landroid/telephony/mbms/FileServiceInfo;)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/mbms/FileServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->fileServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public setSubscriptionId(I)Landroid/telephony/mbms/DownloadRequest$Builder;
    .locals 0

    iput p1, p0, Landroid/telephony/mbms/DownloadRequest$Builder;->subscriptionId:I

    return-object p0
.end method
