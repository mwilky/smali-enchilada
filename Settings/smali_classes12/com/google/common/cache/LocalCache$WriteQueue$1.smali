.class Lcom/google/common/cache/LocalCache$WriteQueue$1;
.super Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache$WriteQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache$AbstractReferenceEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/cache/LocalCache$WriteQueue;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache$WriteQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/cache/LocalCache$WriteQueue;

    .line 3595
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->this$0:Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;-><init>()V

    .line 3605
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3617
    iput-object p0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3609
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3621
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .line 3599
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3614
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "next":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->nextWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3615
    return-void
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3626
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    .local p1, "previous":Lcom/google/common/cache/LocalCache$ReferenceEntry;, "Lcom/google/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$WriteQueue$1;->previousWrite:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 3627
    return-void
.end method

.method public setWriteTime(J)V
    .locals 0
    .param p1, "time"    # J

    .line 3603
    .local p0, "this":Lcom/google/common/cache/LocalCache$WriteQueue$1;, "Lcom/google/common/cache/LocalCache$WriteQueue$1;"
    return-void
.end method
