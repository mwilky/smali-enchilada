.class Lcom/android/settings/network/ApnEditor$ApnData;
.super Ljava/lang/Object;
.source "ApnEditor.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApnData"
.end annotation


# instance fields
.field mData:[Ljava/lang/Object;

.field mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "numberOfField"    # I

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1394
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    .line 1395
    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1398
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    .line 1399
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    .line 1400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1401
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1415
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 1412
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 1413
    goto :goto_1

    .line 1409
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1410
    goto :goto_1

    .line 1403
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1404
    goto :goto_1

    .line 1406
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1407
    nop

    .line 1400
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1418
    .end local v0    # "i":I
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method getInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "index"    # I

    .line 1429
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getInteger(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .line 1433
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnEditor$ApnData;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1434
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 1438
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getUri()Landroid/net/Uri;
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method setObject(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 1442
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mData:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 1443
    return-void
.end method

.method setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1425
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$ApnData;->mUri:Landroid/net/Uri;

    .line 1426
    return-void
.end method
