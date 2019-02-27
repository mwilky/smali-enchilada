.class public final Landroid/os/IncidentReportArgs;
.super Ljava/lang/Object;
.source "IncidentReportArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/IncidentReportArgs;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEST_AUTO:I = 0xc8

.field private static final DEST_EXPLICIT:I = 0x64


# instance fields
.field private mAll:Z

.field private mDest:I

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mSections:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/IncidentReportArgs$1;

    invoke-direct {v0}, Landroid/os/IncidentReportArgs$1;-><init>()V

    sput-object v0, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    const/16 v0, 0xc8

    iput v0, p0, Landroid/os/IncidentReportArgs;->mDest:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/os/IncidentReportArgs;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addHeader([B)V
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSection(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-void
.end method

.method public containsSection(I)Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAll()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    nop

    :goto_2
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/IncidentReportArgs;->mDest:I

    return-void
.end method

.method public sectionCount()I
    .locals 1

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    return v0
.end method

.method public setAll(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    :cond_0
    return-void
.end method

.method public setPrivacyPolicy(I)V
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    iput v0, p0, Landroid/os/IncidentReportArgs;->mDest:I

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/os/IncidentReportArgs;->mDest:I

    nop

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Incident("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    if-eqz v1, :cond_0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " headers), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Dest enum value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/IncidentReportArgs;->mDest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-boolean v0, p0, Landroid/os/IncidentReportArgs;->mAll:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/os/IncidentReportArgs;->mSections:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/os/IncidentReportArgs;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Landroid/os/IncidentReportArgs;->mDest:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
