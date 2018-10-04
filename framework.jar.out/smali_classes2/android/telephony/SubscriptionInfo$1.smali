.class Landroid/telephony/SubscriptionInfo$1;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SubscriptionInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;
    .locals 35

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v1

    check-cast v30, Landroid/graphics/Bitmap;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    sget-object v1, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v32, v1

    check-cast v32, [Landroid/telephony/UiccAccessRule;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    new-instance v34, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v1, v34

    move/from16 v2, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v11, v30

    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v14, v29

    move/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v33

    invoke-direct/range {v1 .. v17}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    return-object v34
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telephony/SubscriptionInfo;
    .locals 1

    new-array v0, p1, [Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionInfo$1;->newArray(I)[Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    return-object p1
.end method
