.class Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateSuccessfulCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$ImmediateFuture<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    .line 160
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    .line 161
    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;, "Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulCheckedFuture;->value:Ljava/lang/Object;

    return-object v0
.end method
