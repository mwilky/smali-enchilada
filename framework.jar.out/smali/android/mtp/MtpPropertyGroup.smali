.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/mtp/MtpPropertyGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderClient;Ljava/lang/String;[I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    array-length v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v5, p3, v3

    invoke-direct {p0, v5, v1}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    nop

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    sget-object v2, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const v1, 0xffff

    goto :goto_0

    :sswitch_3
    const-string v0, "album_artist"

    const v1, 0xffff

    goto :goto_0

    :sswitch_4
    const v1, 0xffff

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "year"

    const v1, 0xffff

    goto :goto_0

    :sswitch_6
    const-string v0, "composer"

    const v1, 0xffff

    goto :goto_0

    :sswitch_7
    const v1, 0xffff

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "track"

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v0, "duration"

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const v1, 0xffff

    goto :goto_0

    :sswitch_b
    const-string v0, "description"

    const v1, 0xffff

    goto :goto_0

    :sswitch_c
    const v1, 0xffff

    goto :goto_0

    :sswitch_d
    const v1, 0xffff

    goto :goto_0

    :sswitch_e
    const/16 v1, 0xa

    goto :goto_0

    :sswitch_f
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_10
    const v1, 0xffff

    goto :goto_0

    :sswitch_11
    const v1, 0xffff

    goto :goto_0

    :sswitch_12
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_13
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_15
    const/4 v1, 0x6

    nop

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_15
        0xdc02 -> :sswitch_14
        0xdc03 -> :sswitch_13
        0xdc04 -> :sswitch_12
        0xdc07 -> :sswitch_11
        0xdc09 -> :sswitch_10
        0xdc0b -> :sswitch_f
        0xdc41 -> :sswitch_e
        0xdc44 -> :sswitch_d
        0xdc46 -> :sswitch_c
        0xdc48 -> :sswitch_b
        0xdc4e -> :sswitch_a
        0xdc89 -> :sswitch_9
        0xdc8b -> :sswitch_8
        0xdc8c -> :sswitch_7
        0xdc96 -> :sswitch_6
        0xdc99 -> :sswitch_5
        0xdc9a -> :sswitch_4
        0xdc9b -> :sswitch_3
        0xdce0 -> :sswitch_2
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const-string v5, "_data=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method private queryGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v2, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    :try_start_1
    const-string v1, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method


# virtual methods
.method public getPropertyList(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpPropertyList;)I
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    array-length v12, v11

    const/4 v13, 0x0

    move-object v2, v0

    move v14, v13

    :goto_0
    if-ge v14, v12, :cond_a

    aget-object v15, v11, v14

    iget v0, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-nez v2, :cond_1

    :try_start_0
    iget-object v0, v1, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/ContentProviderClient;

    iget-object v3, v1, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    iget-object v4, v1, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const-string v19, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v10, v5, v13

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v16 .. v22}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Landroid/mtp/MtpPropertyGroup;->TAG:Ljava/lang/String;

    const-string v4, "Mediaprovider lookup failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move-object v0, v2

    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    sparse-switch v2, :sswitch_data_0

    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    goto/16 :goto_4

    :sswitch_0
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_1
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_2
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v3, "album"

    invoke-direct {v1, v10, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_3
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0101T000000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v4, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_4
    invoke-direct {v1, v10}, Landroid/mtp/MtpPropertyGroup;->queryGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_5
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :cond_3
    move v6, v2

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const/4 v5, 0x4

    rem-int/lit16 v2, v6, 0x3e8

    int-to-long v2, v2

    move-wide/from16 v16, v2

    move-object v2, v8

    move v3, v9

    move/from16 v18, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_6
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    const-string v3, "artist"

    invoke-direct {v1, v10, v3}, Landroid/mtp/MtpPropertyGroup;->queryAudio(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    shl-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v4

    add-long v16, v2, v4

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object v2, v8

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_8
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x0

    :goto_2
    move-wide v6, v2

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_2

    :goto_3
    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_9
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getModifiedTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_a
    iget v2, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v9, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :sswitch_b
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v6

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :sswitch_c
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    :sswitch_d
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v2

    int-to-long v6, v2

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    :sswitch_e
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    invoke-virtual/range {p1 .. p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    int-to-long v6, v2

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    :goto_4
    if-eqz v2, :cond_8

    const v3, 0xffff

    if-eq v2, v3, :cond_6

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_5
    move-wide/from16 v16, v2

    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move-object v2, v8

    move v3, v9

    move-wide/from16 v6, v16

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto :goto_5

    :cond_6
    const-string v2, ""

    if-eqz v0, :cond_7

    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iget v3, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    invoke-virtual {v8, v9, v3, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    :cond_8
    iget v4, v15, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    iget v5, v15, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    const-wide/16 v6, 0x0

    move-object v2, v8

    move v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    nop

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object v2, v0

    goto/16 :goto_0

    :cond_a
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    const/16 v0, 0x2001

    return v0

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_e
        0xdc02 -> :sswitch_d
        0xdc03 -> :sswitch_c
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_a
        0xdc09 -> :sswitch_9
        0xdc0b -> :sswitch_8
        0xdc41 -> :sswitch_7
        0xdc44 -> :sswitch_a
        0xdc46 -> :sswitch_6
        0xdc4e -> :sswitch_9
        0xdc8b -> :sswitch_5
        0xdc8c -> :sswitch_4
        0xdc99 -> :sswitch_3
        0xdc9a -> :sswitch_2
        0xdce0 -> :sswitch_a
        0xde92 -> :sswitch_1
        0xde93 -> :sswitch_0
        0xde94 -> :sswitch_1
        0xde99 -> :sswitch_0
        0xde9a -> :sswitch_0
    .end sparse-switch
.end method
