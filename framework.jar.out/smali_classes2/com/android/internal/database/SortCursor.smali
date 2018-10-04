.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    new-instance v1, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v3

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    invoke-interface {v5, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, ""

    nop

    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v5, v5, v2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_4

    :cond_3
    move-object v3, v4

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_6

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v5, -0x2

    aput v5, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_6
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/database/SortCursor;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/database/SortCursor;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No cursor that can return names"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    rem-int/lit8 v1, p2, 0x40

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v2, v2, v1

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    iput-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v4, :cond_1

    const-string v0, "SortCursor"

    const-string/jumbo v4, "onMove: cache results in a null cursor."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    return v0

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v2

    iget v4, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v4, :cond_4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v7, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v6, v6, v7

    aget v6, v6, v4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    if-lt p2, p1, :cond_5

    if-ne p1, v4, :cond_8

    :cond_5
    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_7

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v5

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :cond_8
    if-gez p1, :cond_9

    const/4 p1, 0x0

    :cond_9
    const/4 v5, -0x1

    move v6, v5

    move v5, p1

    :goto_4
    if-gt v5, p2, :cond_10

    const-string v7, ""

    const/4 v6, -0x1

    move-object v8, v7

    move v7, v6

    move v6, v3

    :goto_5
    if-ge v6, v2, :cond_d

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_6

    :cond_a
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v10, v10, v6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-ltz v7, :cond_b

    invoke-virtual {v9, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_c

    :cond_b
    move-object v8, v9

    move v7, v6

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    if-ne v5, p2, :cond_e

    move v6, v7

    goto :goto_7

    :cond_e
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v7

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    :cond_f
    add-int/lit8 v5, v5, 0x1

    move v6, v7

    goto :goto_4

    :cond_10
    :goto_7
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v5, v1

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v6, v5, v1

    nop

    :goto_8
    if-ge v3, v2, :cond_12

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v3

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v5, v5, v1

    iget-object v7, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v7, v7, v3

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    aput v7, v5, v3

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iput v4, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
