.class public final Landroid/hardware/radio/ProgramList$Filter;
.super Ljava/lang/Object;
.source "ProgramList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ProgramList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/ProgramList$Filter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExcludeModifications:Z

.field private final mIdentifierTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncludeCategories:Z

.field private final mVendorFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/ProgramList$Filter$1;

    invoke-direct {v0}, Landroid/hardware/radio/ProgramList$Filter$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/ProgramList$Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/hardware/radio/Utils;->createIntSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    sget-object v0, Landroid/hardware/radio/ProgramSelector$Identifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->createSet(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    invoke-static {p1}, Landroid/hardware/radio/Utils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/ProgramList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    iput-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    iput-object p1, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    iput-boolean p3, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    iput-boolean p4, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public areCategoriesIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    return v0
.end method

.method public areModificationsExcluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIdentifierTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/hardware/radio/ProgramSelector$Identifier;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    return-object v0
.end method

.method public getVendorFilter()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifierTypes:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeIntSet(Landroid/os/Parcel;Ljava/util/Set;)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIdentifiers:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeSet(Landroid/os/Parcel;Ljava/util/Set;)V

    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mIncludeCategories:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mExcludeModifications:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/hardware/radio/ProgramList$Filter;->mVendorFilter:Ljava/util/Map;

    invoke-static {p1, v0}, Landroid/hardware/radio/Utils;->writeStringMap(Landroid/os/Parcel;Ljava/util/Map;)V

    return-void
.end method
