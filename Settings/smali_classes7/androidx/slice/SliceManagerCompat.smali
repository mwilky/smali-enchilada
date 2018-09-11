.class Landroidx/slice/SliceManagerCompat;
.super Landroidx/slice/SliceManager;
.source "SliceManagerCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public checkSlicePermission(Landroid/net/Uri;II)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 49
    iget-object v0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Landroidx/slice/compat/SliceProviderCompat;->checkSlicePermission(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public getPinnedSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSlices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/slice/compat/SliceProviderCompat;->getPinnedSpecs(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 55
    iget-object v0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->grantSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    return-void
.end method

.method public revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "toPackage"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 61
    iget-object v0, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/slice/SliceManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->revokeSlicePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    return-void
.end method
