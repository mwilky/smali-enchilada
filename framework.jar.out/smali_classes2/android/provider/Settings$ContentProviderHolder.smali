.class final Landroid/provider/Settings$ContentProviderHolder;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentProviderHolder"
.end annotation


# instance fields
.field private mContentProvider:Landroid/content/IContentProvider;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUri:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public clearProviderForTest()V
    .locals 2

    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 2

    iget-object v0, p0, Landroid/provider/Settings$ContentProviderHolder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    :cond_0
    iget-object v1, p0, Landroid/provider/Settings$ContentProviderHolder;->mContentProvider:Landroid/content/IContentProvider;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
