.class public interface abstract Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.super Ljava/lang/Object;
.source "PooledSupplier.java"

# interfaces
.implements Ljava/util/function/LongSupplier;
.implements Lcom/android/internal/util/function/pooled/PooledLambda;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/function/pooled/PooledSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfLong"
.end annotation


# virtual methods
.method public bridge synthetic recycleOnUse()Lcom/android/internal/util/function/pooled/PooledLambda;
    .locals 1

    invoke-interface {p0}, Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract recycleOnUse()Lcom/android/internal/util/function/pooled/PooledSupplier$OfLong;
.end method
