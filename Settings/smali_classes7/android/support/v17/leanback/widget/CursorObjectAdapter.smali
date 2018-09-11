.class public Landroid/support/v17/leanback/widget/CursorObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "CursorObjectAdapter.java"


# static fields
.field private static final CACHE_SIZE:I = 0x64


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private final mItemCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMapper:Landroid/support/v17/leanback/database/CursorMapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    .line 28
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 41
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 28
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 2
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 34
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 28
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    .line 35
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 59
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 65
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 66
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onCursorChanged()V

    .line 68
    return-void
.end method

.method public close()V
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 162
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    .local v0, "item":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 147
    return-object v0

    .line 149
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/database/CursorMapper;->convert(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v0

    .line 143
    .end local v0    # "item":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final getCursor()Landroid/database/Cursor;
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public final getMapper()Landroid/support/v17/leanback/database/CursorMapper;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    return-object v0
.end method

.method protected final invalidateCache(I)V
    .locals 2
    .param p1, "index"    # I

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method protected final invalidateCache(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "count"    # I

    .line 184
    add-int v0, p2, p1

    .local v0, "limit":I
    :goto_0
    if-ge p1, v0, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->invalidateCache(I)V

    .line 184
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "limit":I
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method protected onCursorChanged()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->notifyChanged()V

    .line 92
    return-void
.end method

.method protected onMapperChanged()V
    .locals 0

    .line 119
    return-void
.end method

.method public final setMapper(Landroid/support/v17/leanback/database/CursorMapper;)V
    .locals 1
    .param p1, "mapper"    # Landroid/support/v17/leanback/database/CursorMapper;

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "changed":Z
    :goto_0
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mMapper:Landroid/support/v17/leanback/database/CursorMapper;

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onMapperChanged()V

    .line 112
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    return v0

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 77
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 81
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mCursor:Landroid/database/Cursor;

    .line 82
    iget-object v1, p0, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->mItemCache:Landroid/util/LruCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->trimToSize(I)V

    .line 83
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/CursorObjectAdapter;->onCursorChanged()V

    .line 84
    return-object v0
.end method
