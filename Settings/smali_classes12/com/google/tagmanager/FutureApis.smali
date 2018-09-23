.class Lcom/google/tagmanager/FutureApis;
.super Ljava/lang/Object;
.source "FutureApis.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/16 v0, 0x9

    invoke-static {}, Lcom/google/tagmanager/FutureApis;->version()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 v2, 0x1

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v3, v2, v2}, Ljava/io/File;->setWritable(ZZ)Z

    return v2
.end method

.method public static version()I
    .locals 3

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
