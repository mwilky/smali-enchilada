.class public final Landroid/app/timezone/RulesState;
.super Ljava/lang/Object;
.source "RulesState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesState$DistroStatus;,
        Landroid/app/timezone/RulesState$StagedOperationType;
    }
.end annotation


# static fields
.field private static final BYTE_FALSE:B = 0x0t

.field private static final BYTE_TRUE:B = 0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/RulesState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISTRO_STATUS_INSTALLED:I = 0x2

.field public static final DISTRO_STATUS_NONE:I = 0x1

.field public static final DISTRO_STATUS_UNKNOWN:I = 0x0

.field public static final STAGED_OPERATION_INSTALL:I = 0x3

.field public static final STAGED_OPERATION_NONE:I = 0x1

.field public static final STAGED_OPERATION_UNINSTALL:I = 0x2

.field public static final STAGED_OPERATION_UNKNOWN:I


# instance fields
.field private final mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

.field private final mDistroStatus:I

.field private final mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final mOperationInProgress:Z

.field private final mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

.field private final mStagedOperationType:I

.field private final mSystemRulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timezone/RulesState$1;

    invoke-direct {v0}, Landroid/app/timezone/RulesState$1;-><init>()V

    sput-object v0, Landroid/app/timezone/RulesState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "systemRulesVersion"

    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateRulesVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    const-string v0, "distroFormatVersionSupported"

    invoke-static {v0, p2}, Landroid/app/timezone/Utils;->validateNotNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroFormatVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    iput-boolean p3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "stagedOperationType != STAGED_OPERATION_UNKNOWN"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p4}, Landroid/app/timezone/RulesState;->validateStagedOperation(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string/jumbo v1, "stagedDistroRulesVersion"

    invoke-static {v0, v1, p5}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-static {p6}, Landroid/app/timezone/RulesState;->validateDistroStatus(I)I

    move-result v0

    iput v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v2, v3

    nop

    :cond_3
    const-string v0, "installedDistroRulesVersion"

    invoke-static {v2, v0, p7}, Landroid/app/timezone/Utils;->validateConditionalNull(ZLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezone/DistroRulesVersion;

    iput-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 1

    invoke-static {p0}, Landroid/app/timezone/RulesState;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/RulesState;
    .locals 15

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v10

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v12

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/timezone/DistroRulesVersion;

    new-instance v14, Landroid/app/timezone/RulesState;

    move-object v0, v14

    move-object v1, v8

    move-object v2, v9

    move v4, v10

    move-object v5, v11

    move v6, v12

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V

    return-object v14
.end method

.method private static validateDistroStatus(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown distro status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateStagedOperation(I)I
    .locals 3

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown operation type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/timezone/RulesState;

    iget-boolean v3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    iget-boolean v4, v2, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    if-eq v3, v4, :cond_2

    return v1

    :cond_2
    iget v3, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    iget v4, v2, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    iget v4, v2, Landroid/app/timezone/RulesState;->mDistroStatus:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroFormatVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    iget-object v4, v2, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v3, v4}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v2, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_8

    :goto_0
    return v1

    :cond_8
    iget-object v3, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v3, :cond_9

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    iget-object v1, v2, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0, v1}, Landroid/app/timezone/DistroRulesVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_9
    iget-object v3, v2, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    move v0, v1

    :goto_1
    return v0

    :cond_b
    :goto_2
    return v1
.end method

.method public getDistroStatus()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    return v0
.end method

.method public getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    return-object v0
.end method

.method public getStagedOperationType()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    return v0
.end method

.method public getSystemRulesVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v3}, Landroid/app/timezone/DistroFormatVersion;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-boolean v3, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v3}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0}, Landroid/app/timezone/DistroRulesVersion;->hashCode()I

    move-result v4

    nop

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public isDistroFormatVersionSupported(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v0, p1}, Landroid/app/timezone/DistroFormatVersion;->supports(Landroid/app/timezone/DistroFormatVersion;)Z

    move-result v0

    return v0
.end method

.method public isOperationInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    return v0
.end method

.method public isSystemVersionNewerThan(Landroid/app/timezone/DistroRulesVersion;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/timezone/DistroRulesVersion;->getRulesVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RulesState{mSystemRulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDistroFormatVersionSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStagedOperationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStagedDistroRulesVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDistroStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mInstalledDistroRulesVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mSystemRulesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mDistroFormatVersionSupported:Landroid/app/timezone/DistroFormatVersion;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/timezone/RulesState;->mOperationInProgress:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/app/timezone/RulesState;->mStagedOperationType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mStagedDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/timezone/RulesState;->mDistroStatus:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/app/timezone/RulesState;->mInstalledDistroRulesVersion:Landroid/app/timezone/DistroRulesVersion;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
