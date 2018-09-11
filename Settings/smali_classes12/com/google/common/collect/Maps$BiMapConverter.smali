.class final Lcom/google/common/collect/Maps$BiMapConverter;
.super Lcom/google/common/base/Converter;
.source "Maps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BiMapConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Converter<",
        "TA;TB;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final bimap:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap<",
            "TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 1321
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TA;TB;>;"
    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    .line 1322
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    iput-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    .line 1323
    return-void
.end method

.method private static convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap<",
            "TX;TY;>;TX;)TY;"
        }
    .end annotation

    .line 1336
    .local p0, "bimap":Lcom/google/common/collect/BiMap;, "Lcom/google/common/collect/BiMap<TX;TY;>;"
    .local p1, "input":Ljava/lang/Object;, "TX;"
    invoke-interface {p0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1337
    .local v0, "output":Ljava/lang/Object;, "TY;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "No non-null mapping present for input: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    return-object v0
.end method


# virtual methods
.method protected doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TA;"
        }
    .end annotation

    .line 1332
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "b":Ljava/lang/Object;, "TB;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps$BiMapConverter;->convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 1327
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    .local p1, "a":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps$BiMapConverter;->convert(Lcom/google/common/collect/BiMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1343
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    instance-of v0, p1, Lcom/google/common/collect/Maps$BiMapConverter;

    if-eqz v0, :cond_0

    .line 1344
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Maps$BiMapConverter;

    .line 1345
    .local v0, "that":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<**>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    iget-object v2, v0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1347
    .end local v0    # "that":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1352
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1358
    .local p0, "this":Lcom/google/common/collect/Maps$BiMapConverter;, "Lcom/google/common/collect/Maps$BiMapConverter<TA;TB;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maps.asConverter("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/collect/Maps$BiMapConverter;->bimap:Lcom/google/common/collect/BiMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
