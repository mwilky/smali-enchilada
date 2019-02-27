.class Landroid/telecom/ParcelableCall$1;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableCall;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;
    .locals 58

    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v33, v2

    check-cast v33, Landroid/telecom/DisconnectCause;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v2

    invoke-virtual {v0, v15, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v34

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v35

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v38, v2

    check-cast v38, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v42, v2

    check-cast v42, Landroid/telecom/GatewayInfo;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v43, v2

    check-cast v43, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move/from16 v18, v4

    goto :goto_0

    :cond_0
    move/from16 v18, v3

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v45

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v2

    invoke-virtual {v0, v14, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v46, v2

    check-cast v46, Landroid/telecom/StatusHints;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v47

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v2

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v48

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v49

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v50

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v4, :cond_1

    move/from16 v20, v4

    goto :goto_1

    :cond_1
    move/from16 v20, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    move-object/from16 v51, v2

    check-cast v51, Landroid/telecom/ParcelableRttCall;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v52

    new-instance v54, Landroid/telecom/ParcelableCall;

    move-object/from16 v2, v54

    move-object/from16 v3, v31

    move/from16 v4, v32

    move-object/from16 v5, v33

    move-object v6, v15

    move/from16 v7, v34

    move/from16 v8, v35

    move/from16 v9, v50

    move-wide/from16 v10, v36

    move-object/from16 v12, v38

    move-object/from16 v55, v13

    move/from16 v13, v39

    move-object/from16 v56, v14

    move-object/from16 v14, v40

    move-object/from16 v57, v15

    move/from16 v15, v41

    move-object/from16 v16, v42

    move-object/from16 v17, v43

    move-object/from16 v19, v44

    move-object/from16 v21, v51

    move-object/from16 v22, v45

    move-object/from16 v23, v56

    move-object/from16 v24, v46

    move/from16 v25, v47

    move-object/from16 v26, v55

    move-object/from16 v27, v48

    move-object/from16 v28, v49

    move-wide/from16 v29, v52

    invoke-direct/range {v2 .. v30}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;J)V

    return-object v54
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCall;
    .locals 1

    new-array v0, p1, [Landroid/telecom/ParcelableCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCall$1;->newArray(I)[Landroid/telecom/ParcelableCall;

    move-result-object p1

    return-object p1
.end method
