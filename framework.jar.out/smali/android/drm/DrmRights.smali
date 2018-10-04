.class public Landroid/drm/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mData:[B

.field private mMimeType:Ljava/lang/String;

.field private mSubscriptionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getData()[B

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Landroid/drm/DrmRights;->instantiate(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    iput-object p4, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    return-void
.end method

.method private instantiate(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmRights;->mData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iput-object p2, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/drm/DrmRights;->mData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmRights;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmRights;->mSubscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method isValid()Z
    .locals 2

    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmRights;->mMimeType:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmRights;->mData:[B

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
