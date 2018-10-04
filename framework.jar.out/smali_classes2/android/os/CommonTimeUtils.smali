.class Landroid/os/CommonTimeUtils;
.super Ljava/lang/Object;
.source "CommonTimeUtils.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final SUCCESS:I


# instance fields
.field private mInterfaceDesc:Ljava/lang/String;

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public transactGetInt(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    move v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    nop

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactGetLong(IJ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-wide v3, p2

    :goto_0
    move-wide v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    nop

    return-wide v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactGetSockaddr(I)Ljava/net/InetSocketAddress;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v0, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x0

    move/from16 v6, p1

    :try_start_1
    invoke-interface {v0, v6, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    sget v10, Landroid/system/OsConstants;->AF_INET:I

    const/4 v13, 0x1

    const/4 v14, 0x4

    if-ne v10, v9, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move v7, v15

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%d.%d.%d.%d"

    new-array v14, v14, [Ljava/lang/Object;

    shr-int/lit8 v12, v10, 0x18

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v5

    shr-int/lit8 v5, v10, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v14, v13

    shr-int/lit8 v5, v10, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x2

    aput-object v5, v14, v12

    and-int/lit16 v5, v10, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x3

    aput-object v5, v14, v12

    invoke-static {v15, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    nop

    move/from16 v24, v0

    goto/16 :goto_0

    :cond_0
    sget v10, Landroid/system/OsConstants;->AF_INET6:I

    if-ne v10, v9, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v7, v18

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "[%04X:%04X:%04X:%04X:%04X:%04X:%04X:%04X]"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    shr-int/lit8 v22, v10, 0x10

    const v23, 0xffff

    move/from16 v24, v0

    and-int v0, v22, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v21, 0x0

    aput-object v0, v5, v21

    and-int v0, v10, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v20, 0x1

    aput-object v0, v5, v20

    shr-int/lit8 v0, v11, 0x10

    and-int v0, v0, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v17, 0x2

    aput-object v0, v5, v17

    and-int v0, v11, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x3

    aput-object v0, v5, v16

    shr-int/lit8 v0, v12, 0x10

    and-int v0, v0, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x4

    aput-object v0, v5, v16

    and-int v0, v12, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x5

    aput-object v0, v5, v16

    shr-int/lit8 v16, v15, 0x10

    and-int v0, v16, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x6

    aput-object v0, v5, v16

    and-int v0, v15, v23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x7

    aput-object v0, v5, v16

    invoke-static {v14, v13, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    :cond_1
    move/from16 v24, v0

    :goto_0
    if-eqz v8, :cond_2

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v8, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    :cond_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v6, p1

    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transactGetString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    move-object v2, v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    nop

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public transactSetInt(II)I
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, -0x7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3
.end method

.method public transactSetLong(IJ)I
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, -0x7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3
.end method

.method public transactSetSockaddr(ILjava/net/InetSocketAddress;)I
    .locals 15

    move-object v1, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v0, -0x1

    move v4, v0

    :try_start_0
    iget-object v0, v1, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    instance-of v9, v6, Ljava/net/Inet4Address;

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v9, :cond_1

    aget-byte v9, v7, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    aget-byte v5, v7, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v9

    aget-byte v9, v7, v11

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v5, v9

    aget-byte v9, v7, v10

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v5, v9

    sget v9, Landroid/system/OsConstants;->AF_INET:I

    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    instance-of v9, v6, Ljava/net/Inet6Address;

    if-eqz v9, :cond_3

    move-object v9, v6

    check-cast v9, Ljava/net/Inet6Address;

    sget v12, Landroid/system/OsConstants;->AF_INET6:I

    invoke-virtual {v2, v12}, Landroid/os/Parcel;->writeInt(I)V

    move v12, v0

    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_2

    mul-int/lit8 v13, v12, 0x4

    add-int/2addr v13, v0

    aget-byte v13, v7, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v5

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v11

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    mul-int/lit8 v14, v12, 0x4

    add-int/2addr v14, v10

    aget-byte v14, v7, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v13, v14

    invoke-virtual {v2, v13}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1
    iget-object v5, v1, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v9, p1

    :try_start_1
    invoke-interface {v5, v9, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move/from16 v9, p1

    const/4 v0, -0x4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_1
    move-exception v0

    move/from16 v9, p1

    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :catch_1
    move-exception v0

    move/from16 v9, p1

    :goto_3
    const/4 v0, -0x7

    :goto_4
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    return v0
.end method

.method public transactSetString(ILjava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mInterfaceDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/os/CommonTimeUtils;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    :catch_0
    move-exception v2

    const/4 v3, -0x7

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3
.end method
