.class public Landroid/content/SyncAdapterType;
.super Ljava/lang/Object;
.source "SyncAdapterType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountType:Ljava/lang/String;

.field private final allowParallelSyncs:Z

.field public final authority:Ljava/lang/String;

.field private final isAlwaysSyncable:Z

.field public final isKey:Z

.field private final packageName:Ljava/lang/String;

.field private final settingsActivity:Ljava/lang/String;

.field private final supportsUploading:Z

.field private final userVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/SyncAdapterType$1;

    invoke-direct {v0}, Landroid/content/SyncAdapterType$1;-><init>()V

    sput-object v0, Landroid/content/SyncAdapterType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    nop

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    nop

    move v5, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    nop

    move v6, v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    nop

    move v7, v3

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    nop

    move v8, v3

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v0, p0

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    iput-boolean v1, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    iput-object v1, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    iput-object v1, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    iput-boolean p4, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    iput-boolean p5, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    iput-boolean p6, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    iput-object p7, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    iput-object p8, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accountType must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the authority must not be empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;
    .locals 1

    new-instance v0, Landroid/content/SyncAdapterType;

    invoke-direct {v0, p0, p1}, Landroid/content/SyncAdapterType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public allowParallelSyncs()Z
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/SyncAdapterType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/content/SyncAdapterType;

    iget-object v3, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x11

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isAlwaysSyncable()Z
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isUserVisible()Z
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsUploading()Z
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method is not allowed to be called when this is a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncAdapterType Key {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncAdapterType {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportsUploading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAlwaysSyncable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowParallelSyncs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", settingsActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isKey:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->userVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->supportsUploading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->isAlwaysSyncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/SyncAdapterType;->allowParallelSyncs:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/SyncAdapterType;->settingsActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/SyncAdapterType;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "keys aren\'t parcelable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
