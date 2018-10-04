.class public final Landroid/content/IntentFilter$AuthorityEntry;
.super Ljava/lang/Object;
.source "IntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorityEntry"
.end annotation


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mOrigHost:Ljava/lang/String;

.field private final mPort:I

.field private final mWild:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2a

    if-ne v0, v3, :cond_0

    move v2, v1

    nop

    :cond_0
    iput-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return-void
.end method

.method static synthetic access$000(Landroid/content/IntentFilter$AuthorityEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/IntentFilter$AuthorityEntry;)I
    .locals 1

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method static synthetic access$200(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/content/IntentFilter$AuthorityEntry;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/content/IntentFilter$AuthorityEntry;

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    return v0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 4

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-ltz v2, :cond_5

    iget v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    const/high16 v1, 0x400000

    return v1

    :cond_5
    const/high16 v1, 0x300000

    return v1
.end method

.method public match(Landroid/content/IntentFilter$AuthorityEntry;)Z
    .locals 3

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    iget-boolean v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    iget v1, p1, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mOrigHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mHost:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-boolean v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mWild:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Landroid/content/IntentFilter$AuthorityEntry;->mPort:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
