.class Landroid/graphics/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/graphics/GraphicBuffer;->access$000(Landroid/os/Parcel;)J

    move-result-wide v12

    const-wide/16 v0, 0x0

    cmp-long v0, v12, v0

    if-eqz v0, :cond_0

    new-instance v14, Landroid/graphics/GraphicBuffer;

    const/4 v7, 0x0

    move-object v0, v14

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move-wide v5, v12

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJLandroid/graphics/GraphicBuffer$1;)V

    return-object v14

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/graphics/GraphicBuffer;
    .locals 1

    new-array v0, p1, [Landroid/graphics/GraphicBuffer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->newArray(I)[Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method
