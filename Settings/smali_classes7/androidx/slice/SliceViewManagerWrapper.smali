.class Landroidx/slice/SliceViewManagerWrapper;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerWrapper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x1c
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mManager:Landroid/app/slice/SliceManager;

.field private final mSpecs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceViewManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    sget-object v0, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0}, Landroidx/slice/SliceConvert;->unwrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/content/Intent;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    iget-object v1, p0, Landroidx/slice/SliceViewManagerWrapper;->mSpecs:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->pinSlice(Landroid/net/Uri;Ljava/util/Set;)V

    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/SliceViewManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->unpinSlice(Landroid/net/Uri;)V

    return-void
.end method
