.class public abstract Landroid/media/MediaMetadataEditor;
.super Ljava/lang/Object;
.source "MediaMetadataEditor.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BITMAP_KEY_ARTWORK:I = 0x64

.field public static final KEY_EDITABLE_MASK:I = 0x1fffffff

.field protected static final METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

.field protected static final METADATA_TYPE_BITMAP:I = 0x2

.field protected static final METADATA_TYPE_INVALID:I = -0x1

.field protected static final METADATA_TYPE_LONG:I = 0x0

.field protected static final METADATA_TYPE_RATING:I = 0x3

.field protected static final METADATA_TYPE_STRING:I = 0x1

.field public static final RATING_KEY_BY_OTHERS:I = 0x65

.field public static final RATING_KEY_BY_USER:I = 0x10000001

.field private static final TAG:Ljava/lang/String; = "MediaMetadataEditor"


# instance fields
.field protected mApplied:Z

.field protected mArtworkChanged:Z

.field protected mEditableKeys:J

.field protected mEditorArtwork:Landroid/graphics/Bitmap;

.field protected mEditorMetadata:Landroid/os/Bundle;

.field protected mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

.field protected mMetadataChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x10000001

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addEditableKey(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t change editable keys of a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const v0, 0x10000001

    if-ne p1, v0, :cond_1

    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const v2, 0x1fffffff

    and-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z

    goto :goto_0

    :cond_1
    const-string v0, "MediaMetadataEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cannot be edited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract apply()V
.end method

.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t clear a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getEditableKeys()[I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const-wide/32 v2, 0x10000001

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10000001

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLong(IJ)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'long\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getObject(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object p2

    :pswitch_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    monitor-exit p0

    return-object v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    monitor-exit p0

    return-object p2

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    return-object p2

    :cond_4
    :goto_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'String\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    :try_start_1
    iput-object p2, p0, Landroid/media/MediaMetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mArtworkChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'Bitmap\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putLong(IJ)Landroid/media/MediaMetadataEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'long\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    monitor-exit p0

    return-object p0

    :pswitch_1
    if-eqz p2, :cond_2

    :try_start_2
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Bitmap for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/MediaMetadataEditor;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_2
    if-eqz p2, :cond_4

    :try_start_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a String for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaMetadataEditor;->putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_3
    :try_start_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaMetadataEditor;->putLong(IJ)Landroid/media/MediaMetadataEditor;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a non-null Long for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized putString(ILjava/lang/String;)Landroid/media/MediaMetadataEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t edit a previously applied MediaMetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    sget-object v0, Landroid/media/MediaMetadataEditor;->METADATA_KEYS_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/MediaMetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type \'String\' for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeEditableKeys()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mApplied:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaMetadataEditor"

    const-string v1, "Can\'t remove all editable keys of a previously applied MetadataEditor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iput-wide v2, p0, Landroid/media/MediaMetadataEditor;->mEditableKeys:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaMetadataEditor;->mMetadataChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
