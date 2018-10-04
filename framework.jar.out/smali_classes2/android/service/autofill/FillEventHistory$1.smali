.class Landroid/service/autofill/FillEventHistory$1;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/FillEventHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/FillEventHistory;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillEventHistory;
    .locals 26

    move-object/from16 v0, p1

    new-instance v1, Landroid/service/autofill/FillEventHistory;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/service/autofill/FillEventHistory;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    nop

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v21

    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v23

    sget-object v6, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    nop

    move-object v14, v7

    goto :goto_2

    :cond_1
    move-object v14, v5

    :goto_2
    const-class v6, Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v5, v6}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v6

    move-object/from16 v24, v6

    check-cast v24, [Landroid/view/autofill/AutofillId;

    if-eqz v24, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/service/autofill/FieldClassification;->readArrayFromParcel(Landroid/os/Parcel;)[Landroid/service/autofill/FieldClassification;

    move-result-object v5

    :goto_3
    move-object/from16 v16, v5

    goto :goto_4

    :cond_2
    goto :goto_3

    :goto_4
    new-instance v13, Landroid/service/autofill/FillEventHistory$Event;

    move-object v5, v13

    move/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object v3, v13

    move-object v13, v15

    move-object/from16 v25, v15

    move-object/from16 v15, v24

    invoke-direct/range {v5 .. v16}, Landroid/service/autofill/FillEventHistory$Event;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;[Landroid/view/autofill/AutofillId;[Landroid/service/autofill/FieldClassification;)V

    invoke-virtual {v1, v3}, Landroid/service/autofill/FillEventHistory;->addEvent(Landroid/service/autofill/FillEventHistory$Event;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/FillEventHistory;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/FillEventHistory;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/FillEventHistory;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/FillEventHistory$1;->newArray(I)[Landroid/service/autofill/FillEventHistory;

    move-result-object p1

    return-object p1
.end method
