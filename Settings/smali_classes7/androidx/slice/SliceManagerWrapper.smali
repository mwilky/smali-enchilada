.class Landroidx/slice/SliceManagerWrapper;
.super Landroidx/slice/SliceManager;
.source "SliceManagerWrapper.java"


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
.field private final mContext:Landroid/content/Context;

.field private final mManager:Landroid/app/slice/SliceManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    invoke-direct {p0, p1, v0}, Landroidx/slice/SliceManagerWrapper;-><init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/slice/SliceManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/app/slice/SliceManager;

    .line 44
    invoke-direct {p0}, Landroidx/slice/SliceManager;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/slice/SliceManagerWrapper;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    .line 47
    return-void
.end method


# virtual methods
.method public checkSlicePermission(Landroid/net/Uri;II)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 57
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/slice/SliceManager;->checkSlicePermission(Landroid/net/Uri;II)I

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

    .line 72
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0}, Landroid/app/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

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

    .line 51
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->getPinnedSpecs(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "toPackage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 63
    return-void
.end method

.method public revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "toPackage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 67
    iget-object v0, p0, Landroidx/slice/SliceManagerWrapper;->mManager:Landroid/app/slice/SliceManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/slice/SliceManager;->revokeSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    return-void
.end method
