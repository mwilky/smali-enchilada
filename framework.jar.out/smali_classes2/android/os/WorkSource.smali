.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iput-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-void

    :cond_0
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :goto_1
    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :cond_4
    return-void
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    return-object p0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return-object p0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .locals 3

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-object v2, v1

    move v1, v3

    :goto_0
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-nez v2, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :cond_4
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    move-object v2, v0

    move v0, v3

    :goto_1
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_5
    if-nez v2, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move-object v0, v2

    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    return-object v2

    :cond_b
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method private insert(II)V
    .locals 5

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, v1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    if-lez p1, :cond_1

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void
.end method

.method private insert(IILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v3, v1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, v1

    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    if-lez p1, :cond_1

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v4, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v1, p1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_4

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, p1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    :goto_0
    return-void
.end method

.method public static isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "chained_battery_attribution_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .locals 9

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    if-ge v6, v2, :cond_3

    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x1

    if-ge v5, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget v7, v3, v6

    aget v8, v1, v5

    if-le v7, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v4
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 11

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v0, :cond_4

    if-ge v8, v3, :cond_4

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_1

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x1

    if-ge v7, v0, :cond_0

    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v1, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v2, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    aget v9, v4, v8

    aget v10, v1, v7

    if-gt v9, v10, :cond_3

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_2

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    return v6
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11

    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v6, :cond_1

    if-ge v5, v0, :cond_0

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    :goto_1
    const/4 v6, -0x1

    iget v7, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v7, :cond_a

    if-ge v5, v0, :cond_2

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_2

    goto :goto_5

    :cond_2
    if-nez p2, :cond_4

    if-ge v5, v0, :cond_3

    if-nez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_4
    move v7, v4

    :goto_2
    if-gez v6, :cond_7

    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v7

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v7, v8, :cond_5

    goto :goto_4

    :cond_5
    if-ge v5, v0, :cond_6

    invoke-direct {p0, p1, v7, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v8

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    :goto_3
    move v6, v8

    goto :goto_2

    :cond_7
    :goto_4
    if-ge v4, v7, :cond_8

    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v7

    invoke-static {v8, v7, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v7

    invoke-static {v8, v7, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v7, v4

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    move v7, v4

    :cond_8
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v7, v8, :cond_9

    if-nez v6, :cond_9

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_9
    move v4, v7

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v3, 0x1

    aget v7, v1, v5

    aget-object v8, v2, v5

    invoke-direct {p0, v4, v7, v8}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    if-eqz p3, :cond_b

    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v7, v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_b
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_6
    goto/16 :goto_0
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    move-object v4, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-lt v5, v1, :cond_1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    return v7

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_9

    if-ge v0, v2, :cond_2

    aget v8, v3, v0

    aget v9, v4, v5

    if-ge v8, v9, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_4

    if-ge v0, v2, :cond_3

    aget v8, v3, v0

    aget v9, v4, v5

    if-ne v8, v9, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v8, v5

    :goto_2
    if-ge v8, v1, :cond_6

    if-ge v0, v2, :cond_5

    aget v9, v3, v0

    aget v10, v4, v8

    if-le v9, v10, :cond_6

    :cond_5
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v4, v8

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    if-ge v5, v8, :cond_7

    sub-int v9, v1, v8

    invoke-static {v4, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v9, v8, v5

    sub-int/2addr v1, v9

    move v8, v5

    :cond_7
    if-ge v8, v1, :cond_8

    if-ge v0, v2, :cond_8

    aget v9, v3, v0

    aget v10, v4, v8

    if-ne v9, v10, :cond_8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_8
    move v5, v8

    goto :goto_0

    :cond_9
    :goto_3
    const/4 v7, 0x1

    if-nez v4, :cond_a

    const/4 v8, 0x4

    new-array v4, v8, [I

    aget v8, v3, v0

    aput v8, v4, v6

    goto :goto_4

    :cond_a
    array-length v8, v4

    if-lt v1, v8, :cond_d

    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    if-lez v5, :cond_b

    invoke-static {v4, v6, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    if-ge v5, v1, :cond_c

    add-int/lit8 v9, v5, 0x1

    sub-int v10, v1, v5

    invoke-static {v4, v5, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    move-object v4, v8

    aget v9, v3, v0

    aput v9, v4, v5

    goto :goto_4

    :cond_d
    if-ge v5, v1, :cond_e

    add-int/lit8 v8, v5, 0x1

    sub-int v9, v1, v5

    invoke-static {v4, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    aget v8, v3, v0

    aput v8, v4, v5

    :goto_4
    if-eqz p3, :cond_f

    sget-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v9, v3, v0

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    :cond_f
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(I)Z
    .locals 4

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    return v1

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-ltz v0, :cond_1

    return v2

    :cond_1
    neg-int v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding without name to named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(ILjava/lang/String;)Z
    .locals 4

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    invoke-direct {p0, v2, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    return v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding name to unnamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 8

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :cond_0
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v7, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public clearNames()V
    .locals 6

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    :cond_2
    return-void
.end method

.method public createWorkChain()Landroid/os/WorkSource$WorkChain;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 10

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_3

    aget v8, v1, v7

    aget v9, v3, v7

    if-eq v8, v9, :cond_1

    return v2

    :cond_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    aget-object v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    return v2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_4
    return v1
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWorkChains()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_0

    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v4, v2, 0x1c

    or-int/2addr v3, v4

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v0

    xor-int v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    nop

    :goto_1
    move v0, v1

    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v1, :cond_1

    shl-int/lit8 v1, v2, 0x4

    ushr-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v2, v1, v3

    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    shl-int/lit8 v0, v2, 0x4

    ushr-int/lit8 v1, v2, 0x1c

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int v2, v0, v1

    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return v1
.end method

.method public set(I)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v1, v1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v1, v3, :cond_2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    :goto_0
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v1, v2, :cond_3

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    :cond_5
    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    :goto_1
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :goto_2
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v4, v1, v3

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v1, v2

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    const-string v2, " chains="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transferWorkChains(Landroid/os/WorkSource;)V
    .locals 2

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :goto_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v7, 0x10900000002L

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    iget-object v6, v0, Landroid/os/WorkSource;->mUids:[I

    aget v6, v6, v5

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v16

    const/16 v17, 0x0

    :goto_2
    move/from16 v18, v17

    array-length v4, v15

    move/from16 v7, v18

    if-ge v7, v4, :cond_2

    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    aget v4, v16, v7

    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    aget-object v4, v15, v7

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v17, v7, 0x1

    move-wide v7, v11

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_2

    :cond_2
    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    move-wide v7, v11

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
