.class Landroid/service/autofill/Dataset$1;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Dataset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/Dataset;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    if-nez v1, :cond_0

    new-instance v2, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v2}, Landroid/service/autofill/Dataset$Builder;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/service/autofill/Dataset$Builder;

    invoke-direct {v2, v1}, Landroid/service/autofill/Dataset$Builder;-><init>(Landroid/widget/RemoteViews;)V

    :goto_0
    sget-object v3, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    sget-object v4, Landroid/view/autofill/AutofillValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v4

    sget-object v5, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    sget-object v6, Landroid/service/autofill/Dataset$DatasetFieldFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-static {v2, v8, v9, v10, v11}, Landroid/service/autofill/Dataset$Builder;->access$900(Landroid/service/autofill/Dataset$Builder;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/widget/RemoteViews;Landroid/service/autofill/Dataset$DatasetFieldFilter;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    invoke-virtual {v2, v0}, Landroid/service/autofill/Dataset$Builder;->setAuthentication(Landroid/content/IntentSender;)Landroid/service/autofill/Dataset$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/service/autofill/Dataset$Builder;->setId(Ljava/lang/String;)Landroid/service/autofill/Dataset$Builder;

    invoke-virtual {v2}, Landroid/service/autofill/Dataset$Builder;->build()Landroid/service/autofill/Dataset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/Dataset;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/Dataset;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/autofill/Dataset$1;->newArray(I)[Landroid/service/autofill/Dataset;

    move-result-object p1

    return-object p1
.end method
