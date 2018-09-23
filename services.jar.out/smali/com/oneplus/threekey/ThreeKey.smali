.class public Lcom/oneplus/threekey/ThreeKey;
.super Lcom/oneplus/threekey/ThreeKeyBase;
.source "ThreeKey.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "ThreeKey"


# instance fields
.field private mPolicys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/three_key/IThreeKeyPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 3

    const-string v0, "ThreeKey"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addThreeKeyPolicy]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public init(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v1, v2}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase;->init(I)V

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setInitMode(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    :goto_3
    goto :goto_2

    :cond_1
    return-void
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setDown()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    :try_start_0
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setDown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setMiddle()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    :try_start_0
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setMiddle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setUp()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKey;->mPolicys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/IThreeKeyPolicy;

    :try_start_0
    invoke-interface {v1}, Lcom/oneplus/three_key/IThreeKeyPolicy;->setUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    return-void
.end method
