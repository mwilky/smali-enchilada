.class public final Landroid/view/textclassifier/TextLinks$TextLink;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextLink"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mEntityScores:Landroid/view/textclassifier/EntityConfidence;

.field private final mStart:I

.field final mUrlSpan:Landroid/text/style/URLSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextLinks$TextLink$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$TextLink$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks$TextLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/util/Map;Landroid/text/style/URLSpan;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/text/style/URLSpan;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p1, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    iput p2, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    iput-object p4, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextLinks$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfidenceScore(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    return v0
.end method

.method public getEntity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEntityCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "TextLink{start=%s, end=%s, entityScores=%s, urlSpan=%s}"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mUrlSpan:Landroid/text/style/URLSpan;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEntityScores:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextLinks$TextLink;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
