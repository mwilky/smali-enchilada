.class public final Landroid/service/autofill/FillEventHistory;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillEventHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FillEventHistory"


# instance fields
.field private final mClientState:Landroid/os/Bundle;

.field mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillEventHistory$1;

    invoke-direct {v0}, Landroid/service/autofill/FillEventHistory$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    iput p1, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/service/autofill/FillEventHistory$Event;)V
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientState()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    const-string/jumbo v0, "no events"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillEventHistory$Event;

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$000(Landroid/service/autofill/FillEventHistory$Event;)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$100(Landroid/service/autofill/FillEventHistory$Event;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$200(Landroid/service/autofill/FillEventHistory$Event;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$300(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$400(Landroid/service/autofill/FillEventHistory$Event;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$500(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$600(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$700(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$700(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$700(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$800(Landroid/service/autofill/FillEventHistory$Event;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$900(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    if-eqz v4, :cond_2

    nop

    invoke-static {v3}, Landroid/service/autofill/FillEventHistory$Event;->access$1000(Landroid/service/autofill/FillEventHistory$Event;)[Landroid/service/autofill/FieldClassification;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/service/autofill/FieldClassification;->writeArrayToParcel(Landroid/os/Parcel;[Landroid/service/autofill/FieldClassification;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method
