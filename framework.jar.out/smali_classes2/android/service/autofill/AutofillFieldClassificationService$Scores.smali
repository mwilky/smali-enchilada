.class public final Landroid/service/autofill/AutofillFieldClassificationService$Scores;
.super Ljava/lang/Object;
.source "AutofillFieldClassificationService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scores"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/AutofillFieldClassificationService$Scores;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final scores:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;

    invoke-direct {v0}, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;-><init>()V

    sput-object v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v5, v5, v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/autofill/AutofillFieldClassificationService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>([[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    return-void
.end method

.method synthetic constructor <init>([[FLandroid/service/autofill/AutofillFieldClassificationService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>([[F)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v2, v2, v1

    array-length v2, v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scores ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length v0, v0

    iget-object v1, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
