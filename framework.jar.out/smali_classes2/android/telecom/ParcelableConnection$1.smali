.class Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConnection;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .locals 46

    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v15, v5

    goto :goto_0

    :cond_0
    move v15, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_1

    move/from16 v16, v5

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v37, v3

    check-cast v37, Landroid/telecom/DisconnectCause;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v38

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v42

    new-instance v44, Landroid/telecom/ParcelableConnection;

    move-object/from16 v3, v44

    move-object v4, v2

    move/from16 v5, v26

    move/from16 v6, v27

    move/from16 v7, v39

    move/from16 v8, v40

    move-object/from16 v9, v28

    move/from16 v10, v29

    move-object/from16 v11, v30

    move/from16 v12, v31

    move-object/from16 v13, v32

    move-object/from16 v45, v14

    move/from16 v14, v33

    move-wide/from16 v17, v34

    move-wide/from16 v19, v42

    move-object/from16 v21, v36

    move-object/from16 v22, v37

    move-object/from16 v23, v45

    move-object/from16 v24, v38

    move-object/from16 v25, v41

    invoke-direct/range {v3 .. v25}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V

    return-object v44
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/ParcelableConnection;
    .locals 1

    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method
