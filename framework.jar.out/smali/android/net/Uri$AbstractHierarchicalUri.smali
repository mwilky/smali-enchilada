.class abstract Landroid/net/Uri$AbstractHierarchicalUri;
.super Landroid/net/Uri;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractHierarchicalUri"
.end annotation


# instance fields
.field private volatile host:Ljava/lang/String;

.field private volatile port:I

.field private userInfo:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri$1;)V

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    const/4 v0, -0x2

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>()V

    return-void
.end method

.method private getUserInfoPart()Landroid/net/Uri$Part;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->userInfo:Landroid/net/Uri$Part;

    :goto_0
    return-object v0
.end method

.method private parseHost()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parsePort()I
    .locals 8

    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/16 v3, 0x3a

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri$AbstractHierarchicalUri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception v5

    invoke-static {}, Landroid/net/Uri;->access$600()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error parsing port string."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private parseUserInfo()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parseHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$AbstractHierarchicalUri;->host:Ljava/lang/String;

    :goto_1
    return-object v1
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public getPort()I
    .locals 2

    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->parsePort()I

    move-result v0

    iput v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/net/Uri$AbstractHierarchicalUri;->port:I

    :goto_0
    return v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/Uri$AbstractHierarchicalUri;->getUserInfoPart()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
