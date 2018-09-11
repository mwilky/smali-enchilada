.class Landroidx/slice/SliceViewManagerCompat;
.super Landroidx/slice/SliceViewManagerBase;
.source "SliceViewManagerCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroidx/slice/SliceViewManagerBase;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
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

    .line 74
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getSliceDescendants(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->mapIntentToUri(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public pinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->pinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    .line 47
    return-void
.end method

.method public unpinSlice(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    iget-object v0, p0, Landroidx/slice/SliceViewManagerCompat;->mContext:Landroid/content/Context;

    sget-object v1, Landroidx/slice/widget/SliceLiveData;->SUPPORTED_SPECS:Ljava/util/Set;

    invoke-static {v0, p1, v1}, Landroidx/slice/compat/SliceProviderCompat;->unpinSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)V

    .line 52
    return-void
.end method
