.class public Landroid/net/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

.field private final mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/net/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addChild(Landroid/net/wifi/hotspot2/omadm/XMLNode;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getParent()Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
