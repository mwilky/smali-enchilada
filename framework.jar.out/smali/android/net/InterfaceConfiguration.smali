.class public Landroid/net/InterfaceConfiguration;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/InterfaceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLAG_DOWN:Ljava/lang/String; = "down"

.field private static final FLAG_UP:Ljava/lang/String; = "up"


# instance fields
.field private mAddr:Landroid/net/LinkAddress;

.field private mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHwAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/InterfaceConfiguration$1;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/InterfaceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$002(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)Landroid/net/LinkAddress;
    .locals 0

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-object p1
.end method

.method static synthetic access$200(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method private static validateFlag(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flag contains space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearFlag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFlags()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    return-object v0
.end method

.method public getHardwareAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkAddress()Landroid/net/LinkAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-object v0
.end method

.method public hasFlag(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ignoreInterfaceUpDownStatus()V
    .locals 2

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public isActive()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->isUp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    nop

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public isUp()Z
    .locals 1

    const-string/jumbo v0, "up"

    invoke-virtual {p0, v0}, Landroid/net/InterfaceConfiguration;->hasFlag(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/InterfaceConfiguration;->validateFlag(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHardwareAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    return-void
.end method

.method public setInterfaceDown()V
    .locals 2

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInterfaceUp()V
    .locals 2

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string v1, "down"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    const-string/jumbo v1, "up"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLinkAddress(Landroid/net/LinkAddress;)V
    .locals 0

    iput-object p1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHwAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mHwAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mAddr:Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_0
    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/InterfaceConfiguration;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method
